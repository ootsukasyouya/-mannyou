FactoryBot.define do
  factory :task do
    title { 'test_title' }
    content { 'test_content' }
    deadline {'2020-10-01'}
  end
  factory :second_task, class:Task do
    title { 'test_title2' }
    content { 'test_content2' }
    deadline {'2020-11-01'}
  end
  factory :third_task, class:Task do
    title { 'test_title3' }
    content { 'test_content3' }
    deadline {'2020-12-01'}
  end
end
