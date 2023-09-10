Create a cart application Cart Application
- Create a product
model with name, description, and price
- Seed 2-3 products from the console or using a rake task
- List all products on the landing page
- Create a product detail page
- Show 'Add to cart' button for each product, clicking on the button
will add the item to the cart
- Add a button at the bottom 'View cart'
- Clicking on 'View Cart' Display list of all item added to the cart
- User should be able to remove item from cart
- On the cart detail page we should have a button 'Place order'
and click on that it should create an entry in the Order table



Product HM cart_items

Cart HM cart_items
  belong_to user

cart_items
	belong_to product(product_id)
	belong_to cart(cart_id)

Order HM cart_items throught: :cart
 belong_to user