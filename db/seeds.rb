Book.delete_all
Recipe.delete_all
Ingredient.delete_all

b1 = Book.create(:title => 'Mastering the Art of French Cooking', :cuisine => 'French', :chef => 'Julia Child', :image => 'http://upload.wikimedia.org/wikipedia/en/e/e6/MasteringTheArtOfFrenchCooking1edCover.jpg')

r1 = Recipe.create(:name => 'Potage Parmentier', :course => 'main', :cooktime => '50 minutes', :servingsize => 8, :instructions => 'Simmer potatoes, and leeksin salted water,for 40 to 50 min. until soft.
Puree vegetables with immersion blender, Add butter bits, then salt & pepper to taste. Stir in cream.
Pour into soup bowls & sprinkle on chives,parsley & radishes.', :image => 'http://delicious-cooks.com/data_images/recipes_01/potage-parmentier-potato-and-leek-soup-%E2%80%93-julia-child/potage-parmentier-potato-and-leek-soup-%E2%80%93-julia-child-02.jpg')
r2 = Recipe.create(:name => 'Beef Bourguignon', :course => 'main', :cooktime => '360 minutes', :servingsize => 6, :instructions => 'Pour sauce over meat and vegetables. Cover and simmer 2 to 3 minutes, basting the meat and vegetables with the sauce several times. Serve in casserole, or arrange stew on a platter surrounded with potatoes, noodles or rice, and decorated with parsley.', :image => 'http://25.media.tumblr.com/tumblr_m8ypyf7NRe1rzf8jto1_500.jpg')
r3 = Recipe.create(:name => 'Coq au Vin', :course => 'main', :cooktime => '110 minutes', :servingsize => 6, :instructions => 'Arrange the chicken in a casserole, place the mushrooms and onions around it and baste with the sauce. If the dish is not to be served immediately, film the top of the sauce with stock or dot with small pieces of butter. Set aside uncovered for no longer than 1 hour or cool, cover and refrigerate until needed.', :image => 'http://leitesculinaria.com/wp-content/uploads/2010/02/coq-au-vin.jpg')

i1 = Ingredient.create(:name => 'beef', :measurement => '3 pounds', :cost => 50.00, :image => 'http://media.courierpress.com/media/img/photos/2012/11/27/378690_t607.jpg')
i2 = Ingredient.create(:name => 'carrots', :measurement => '1 bunch', :cost => 5.00, :image => 'http://www.worldcommunitycookbook.org/season/guide/photos/carrots.jpg')
i3 = Ingredient.create(:name => 'butter', :measurement => '4 bars', :cost => 2.00, :image => 'http://i-cdn.apartmenttherapy.com/uimages/kitchen/2008_06_30-SoftenButter.jpg')
i4 = Ingredient.create(:name => 'potatoes', :measurement => '1 pound', :cost => 10.00, :image => 'http://upload.wikimedia.org/wikipedia/commons/f/f3/Potatoes.jpg')
i5 = Ingredient.create(:name => 'cream', :measurement => '1 carton', :cost => 1.00, :image => 'http://www.gimmesomeoven.com/wp-content/uploads/2010/05/whipping-cream-in-carton1.jpg')
i6 = Ingredient.create(:name => 'chicken', :measurement => '1 whole chicken', :cost => 20.00, :image => 'http://media2.onsugar.com/files/users/1/15259/11_2007/chicken/i/Secret-Ingredient-Cumin-Recap-Chicken-Next.jpg')

b1.recipes = [r1, r2]
b1.recipes << r3

r1.ingredients = [i1, i2, i4]
r2.ingredients = [i1, i2, i4, i5, i6]
r3.ingredients = [i2, i3, i4]