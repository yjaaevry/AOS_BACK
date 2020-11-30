INSERT INTO user (user_id, email, user_name, password_hash, provider, created_by, created_date) VALUES
 ( 1, 'admin@mail.com', 'admin', '$2a$04$ItDBvcn41QncTbDL6Q2eNOHVQf5US/bdwQj/aczc2AGoGoEaX.ogi', 'local', 'system', now());

 INSERT INTO user (user_id, email, user_name, password_hash, provider, created_by, created_date) VALUES
 ( 2, 'user1@mail.com', 'user1','$2a$04$Qao0KqDim7VubPHV9x.oj.awaz0ArpPNlU7l0q18ZdsBXJn82dKPG', 'local', 'system', now());

INSERT INTO authority (name) VALUES
 ('ROLE_ADMIN'), ('ROLE_USER' );

INSERT INTO user_authority (user_id,authority_name) VALUES
 ( 1, 'ROLE_ADMIN'), (1, 'ROLE_USER'), (2, 'ROLE_USER');

INSERT INTO post (title, body, user_id, created_by, created_date, last_modified_by, last_modified_date) VALUES
 ( 'The standard Lorem Ipsum passage'
 , '<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>'
 , '1', 'admin', now()-1, 'admin', now()-1);

INSERT INTO comment (body, created_date, last_modified_date, post_id, user_id) VALUES
( 'Nunc et enim ut metus ultricies porta. Praesent cursus sit amet sem a ultrices. In sollicitudin vestibulum eros eu pretium.'
, now()-5, now()-5, 1, 1);

INSERT INTO comment (body, created_date, last_modified_date, post_id, user_id) VALUES
( 'hF-E focuses attention on the message itself, in both form and content. Such translations then would be concerned with such correspondences as poetry to poetry.'
, now()-5, now()-5, 1, 2);
