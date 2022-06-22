CREATE TABLE users(
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(30),
  email_address VARCHAR(50)

);

CREATE TABLE user_password(
  user_password_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL REFERENCES users(user_id),
  password VARCHAR(1000)
);
CREATE TABLE recipes(
  recipe_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL REFERENCES users(user_id),
  occasions INT NOT NULL REFERENCES occasions(occasions_id),
  recipe_text VARCHAR(1000),
  recipe_image TEXT,
  cook_time TIME,
  private_setting BOOL


);
CREATE TABLE grocery_list(
  grocery_list_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL REFERENCES users(user_id),
  recipe INT NOT NULL REFERENCES recipes(recipe_id),
  occasions INT NOT NULL REFERENCES occasions(occasions_id)



 

);
CREATE TABLE occasions(
occasions_id SERIAL PRIMARY KEY,
user_id INT NOT NULL REFERENCES users(user_id)


);

CREATE TABLE ingredidents(
ingredidents_id SERIAL PRIMARY KEY,
recipes INT NOT NULL REFERENCES recipes(recipe_id),
grocery_list INT NOT NULL REFERENCES grocery_list(grocery_list_id),
ingredidents_image TEXT
);