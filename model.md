1️⃣ Logical Database Model (Conceptual / ER level)
Core Entities
User

user_id

name

phone

email

password_hash

profile_image

verified

created_at

Address

address_id

user_id

type (current / permanent)

country

state

city

address_line

latitude

longitude

Shop

shop_id

owner_id (user)

shop_name (unique per owner)

description

address_id

created_at

Item

item_id

shop_id

name

description

cost_price

selling_price

quantity

images

Transactional Entities
Sale

sale_id

item_id

shop_id

seller_id

quantity

selling_price

discount

total_amount

created_at

Purchase

purchase_id

item_id

buyer_id

quantity

cost_price

total_amount

created_at

Expense

expense_id

shop_id

user_id

name

description

amount

created_at

Supporting / Analytics
Service (optional – from sketch)

service_id

name (unique)

description

cost

Relationships (Summary)

User has many Addresses

User owns many Shops

Shop has many Items

Item has many Sales & Purchases

Shop has many Expenses

User performs Sales & Purchases