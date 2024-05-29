

SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE reviews (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    rating INT NOT NULL,
    animation_id INT NOT NULL,
    user VARCHAR(255) NOT NULL,
    comment TEXT NOT NULL,
    likes INT NOT NULL,
    date DATE NOT NULL
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO reviews (rating, user, comment, likes, date, animation_id) VALUES
(2, 'David', 'Didn''t really enjoy it, found it quite boring.', 30, '2024-05-04', 1),
(4, 'Sophia', 'Enjoyable series with interesting characters.', 50, '2024-05-10', 1),
(3, 'Michael', 'Mixed feelings about this one, some good moments but overall just average.', 20, '2024-05-15', 1),
(5, 'Emily', 'Absolutely loved it! Can''t wait for the next season.', 100, '2024-05-20', 1),

(3, 'Alex', 'Expected more from this series, bit disappointed.', 25, '2024-04-28', 2),
(4, 'Emma', 'Great story and characters, really enjoyed it.', 60, '2024-05-08', 2),
(5, 'Ryan', 'One of the best anime I''ve watched in a while, highly recommend it!', 80, '2024-05-18', 2),
(2, 'Olivia', 'Not my cup of tea, couldn''t get into it.', 15, '2024-05-25', 2),

(4, 'Daniel', 'Solid anime, enjoyed the character development.', 45, '2024-05-02', 3),
(3, 'Isabella', 'Decent storyline but pacing felt a bit off.', 35, '2024-05-12', 3),
(5, 'William', 'Absolutely stunning animation, loved every moment.', 90, '2024-05-22', 3),
(4, 'Ava', 'Engaging plot with unexpected twists, kept me hooked.', 55, '2024-05-28', 3),

(5, 'James', 'Masterpiece! Incredible world-building and character depth.', 120, '2024-05-06', 4),
(4, 'Mia', 'Enjoyed the concept and execution, but felt it ended too soon.', 70, '2024-05-16', 4),
(2, 'Ethan', 'Disappointing ending ruined it for me.', 10, '2024-05-26', 4),
(3, 'Charlotte', 'Interesting premise but execution fell short.', 40, '2024-05-30', 4);


