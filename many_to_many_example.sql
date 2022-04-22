USE codeup_test_db;

CREATE TABLE topics (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        topic VARCHAR(50),
                        PRIMARY KEY (id)
);

INSERT INTO topics (topic) VALUES
                               ('literature'),
                               ('philosophy'),
                               ('inspiration'),
                               ('hope');

CREATE TABLE quote_topics (
                              quote_id INT NOT NULL,
                              topic_id INT UNSIGNED NOT NULL,
                              CONSTRAINT quote_topics_quote_id_fk FOREIGN KEY (quote_id) REFERENCES quotes (id),
                              CONSTRAINT quote_topics_topic_id_fk FOREIGN KEY (topic_id) REFERENCES topics (id)
);

INSERT INTO quote_topics  (quote_id, topic_id) VALUES
                                                   (11, 2),
                                                   (11, 3),
                                                   (12, 2),
                                                   (12, 3),
                                                   (13, 1),
                                                   (13, 2),
                                                   (14, 1),
                                                   (14, 3),
                                                   (15, 3),
                                                   (15, 4),
                                                   (16, 3),
                                                   (16, 4);

SELECT content, author_name AS author FROM authors a JOIN quotes q ON a.id = q.author_id JOIN quote_topics qt ON q.id = qt.quote_id JOIN topics t on qt.topic_id = t.id WHERE topic = 'literature';