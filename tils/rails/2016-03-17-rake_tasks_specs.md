# Rake tasks specs
 
_Category: rails_
_Generated on 2016-03-17_

_source_: https://robots.thoughtbot.com/test-rake-tasks-like-a-boss
_source_: https://github.com/crismali/fantaskspec

Thoughtbot has some totally nice suggestions.

Use a shared_context to mix in some niceties for testing:

```ruby
# spec/support/shared_contexts/rake.rb
require 'rake'

shared_context 'rake' do
  let(:rake)      { Rake::Application.new }
  let(:task_name) { self.class.top_level_description }
  let(:task_path) { "lib/tasks/#{task_name.split(':').first}" }
  subject         { rake[task_name] }

  def loaded_files_excluding_current_rake_file
    $LOADED_FEATURES.reject {|file| file == Rails.root.join("#{task_path}.rake").to_s }
  end

  before do
    Rake.application = rake
    Rake.application.rake_require(task_path, [Rails.root.to_s], loaded_files_excluding_current_rake_file)

    Rake::Task.define_task(:environment)
  end
end
```

This can be used like this:

```ruby
# spec/lib/tasks/reports_rake_spec.rb
describe "reports:users" do
  include_context "rake"
  
  it 'does something useful' do
    subject.invoke
    expect(condition).to be 'met'
  end

  # specs! specs! specs!!!
end
```

Adding `fantaskspec` to the mix adds some matchers ( like `depend_on` ) and it
_will be fun_!