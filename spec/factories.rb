FactoryGirl.define do
  factory(:user) do
    email('test@test.com')
    password('test1234')
  end

  factory(:post) do
    title('My Life As A Coding Student')
    body('Everyday is very challenging.')
    # user #association - ties post to user
  end

  factory(:comment) do
    name('Jennifer')
    body('This article is great!')
    post
  end

end
