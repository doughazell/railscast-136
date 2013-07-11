desc "Setup all for app"

# 11/7/13 DH: Altered to convert from sqlite3 to postgresql
task :setup => ['db:create', 'db:migrate', 'load:categories', 'load:products']

namespace :load do
  desc "Load categories into database"
  task :categories do
    Category.delete_all
    ['Electronics', 'Office Supplies', 'Toys', 'Clothing', 'Groceries'].each do |name|
      Category.create!(:name => name)
    end
  end
  
  desc "Load products into database"
  task :products do
    Product.delete_all
    categories = Category.all
    words = File.readlines("/usr/share/dict/words").sort_by { rand }
    lorem = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    25.times do
      # 16/10/12 DH: Rails 3 has removed Array.rand
	  #Product.create!(:name => words.pop.titleize, :category => categories.rand, :description => lorem, :price => [4.99, 9.99, 14.99, 19.99, 29.99].rand)
	  Product.create!(:name => words.pop.titleize, :category => categories.sample, :description => lorem, :price => [4.99, 9.99, 14.99, 19.99, 29.99].sample)
    end
  end
end
