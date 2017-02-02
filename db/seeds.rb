# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

Development.create!([
    {
        image_filename:     'product',
        desc:               'Occaecat ex est id qui quis enim ullamco ipsum cupidatat. Occaecat aliquip duis officia deserunt duis. Aute elit eu aute voluptate dolor cillum consequat veniam voluptate reprehenderit deserunt veniam minim. Irure id qui qui ut ullamco laborum cillum enim. Duis dolor do                     sunt pariatur elit cillum laborum cillum dolore ipsum officia ad adipisicing ad. Commodo duis ea adipisicing in commodo sunt velit consectetur anim laboris non.',
        development_name:   'Voyager, Docklands',
        is_displayed:       'yes'            
    },
    
    {
        image_filename:     'product2',
        desc:               'Occaecat ex est id qui quis enim ullamco ipsum cupidatat. Occaecat aliquip duis officia deserunt duis. Aute elit eu aute voluptate dolor cillum consequat veniam voluptate reprehenderit deserunt veniam minim. Irure id qui qui ut ullamco laborum cillum enim. Duis dolor do                     sunt pariatur elit cillum laborum cillum dolore ipsum officia ad adipisicing ad. Commodo duis ea adipisicing in commodo sunt velit consectetur anim laboris non.',
        development_name:   'Westin Hotel, Melbourne',
        is_displayed:       'yes'            
    },

    {
        image_filename:     'product',
        desc:               'Occaecat ex est id qui quis enim ullamco ipsum cupidatat. Occaecat aliquip duis officia deserunt duis. Aute elit eu aute voluptate dolor cillum consequat veniam voluptate reprehenderit deserunt veniam minim. Irure id qui qui ut ullamco laborum cillum enim. Duis dolor do                     sunt pariatur elit cillum laborum cillum dolore ipsum officia ad adipisicing ad. Commodo duis ea adipisicing in commodo sunt velit consectetur anim laboris non.',
        development_name:   'Police, Carlton',
        is_displayed:       'yes'            
    },

    {
        image_filename:     'product2',
        desc:               'Occaecat ex est id qui quis enim ullamco ipsum cupidatat. Occaecat aliquip duis officia deserunt duis. Aute elit eu aute voluptate dolor cillum consequat veniam voluptate reprehenderit deserunt veniam minim. Irure id qui qui ut ullamco laborum cillum enim. Duis dolor do                     sunt pariatur elit cillum laborum cillum dolore ipsum officia ad adipisicing ad. Commodo duis ea adipisicing in commodo sunt velit consectetur anim laboris non.',
        development_name:   'Beer, More Beer',
        is_displayed:       'yes'            
    },

    {
        image_filename:     'product',
        desc:               'Occaecat ex est id qui quis enim ullamco ipsum cupidatat. Occaecat aliquip duis officia deserunt duis. Aute elit eu aute voluptate dolor cillum consequat veniam voluptate reprehenderit deserunt veniam minim. Irure id qui qui ut ullamco laborum cillum enim. Duis dolor do                     sunt pariatur elit cillum laborum cillum dolore ipsum officia ad adipisicing ad. Commodo duis ea adipisicing in commodo sunt velit consectetur anim laboris non.',
        development_name:   'Ryan, Lalaland',
        is_displayed:       'yes'            
    },

    {
        image_filename:     'product2',
        desc:               'Occaecat ex est id qui quis enim ullamco ipsum cupidatat. Occaecat aliquip duis officia deserunt duis. Aute elit eu aute voluptate dolor cillum consequat veniam voluptate reprehenderit deserunt veniam minim. Irure id qui qui ut ullamco laborum cillum enim. Duis dolor do                     sunt pariatur elit cillum laborum cillum dolore ipsum officia ad adipisicing ad. Commodo duis ea adipisicing in commodo sunt velit consectetur anim laboris non.',
        development_name:   '123, Lego',
        is_displayed:       'yes'            
    },

    {
        image_filename:     'product',
        desc:               'Occaecat ex est id qui quis enim ullamco ipsum cupidatat. Occaecat aliquip duis officia deserunt duis. Aute elit eu aute voluptate dolor cillum consequat veniam voluptate reprehenderit deserunt veniam minim. Irure id qui qui ut ullamco laborum cillum enim. Duis dolor do                     sunt pariatur elit cillum laborum cillum dolore ipsum officia ad adipisicing ad. Commodo duis ea adipisicing in commodo sunt velit consectetur anim laboris non.',
        development_name:   'Mike, Gabe',
        is_displayed:       'yes'            
    },

    {
        image_filename:     'product2',
        desc:               'Occaecat ex est id qui quis enim ullamco ipsum cupidatat. Occaecat aliquip duis officia deserunt duis. Aute elit eu aute voluptate dolor cillum consequat veniam voluptate reprehenderit deserunt veniam minim. Irure id qui qui ut ullamco laborum cillum enim. Duis dolor do                     sunt pariatur elit cillum laborum cillum dolore ipsum officia ad adipisicing ad. Commodo duis ea adipisicing in commodo sunt velit consectetur anim laboris non.',
        development_name:   'Aviel, Goh',
        is_displayed:       'no'            
    },

    
    
])
