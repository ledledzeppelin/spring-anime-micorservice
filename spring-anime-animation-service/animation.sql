SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `animations`;

CREATE TABLE animations (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    tags JSON NOT NULL,
    long_review_size INT NOT NULL,
    short_review_size INT NOT NULL,
    state VARCHAR(50) NOT NULL,
    years INT NOT NULL,
    quarter INT,
    rate DECIMAL(3, 1) NOT NULL,
    views INT NOT NULL,
    comment_id JSON NOT NULL,
    introduction TEXT NOT NULL,
    image VARCHAR(255) NOT NULL
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO animations (id, name, tags, long_review_size, short_review_size, state, years, quarter, rate, views, comment_id, introduction, image) VALUES
(1, '间谍过家家 第二季', '["漫画改", "日常", "搞笑"]', 789, 8173, '连载中', 2024, 1, 9.8, 537, '[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]', '简介：每个人都有不可告人的一面。这是一个世界各国均暗地里进行激烈情报战的时代。奥斯塔尼亚（Ostania）与维斯达利斯（Westalis）的冷战状态已经持续数十年。<黄昏>是维斯达利斯情报局奥斯塔尼亚对策科<WISE>的一名优秀间谍。为调查威胁两国和平的人物——奥斯塔尼亚国家统一党总裁多诺万·德斯蒙，上级给予了他一个绝密任务。任务名为：<枭（Strix）>行动。内容是“一周之内组建家庭，潜入德斯蒙儿子就读的名门学校的联谊会”。于是<黄昏>扮演成精神科医生劳埃德·福杰，开始组建家庭。然而，他找来的女儿阿尼亚是个能读心的超能力者，妻子约尔是个。', '/src/assets/one.jpg'),
(2, '神的记事本', '["日本", "小说", "动画"]', 500, 7000, '完结', 2023, 4, 9.5, 745, '[11, 12, 13, 14, 15, 16, 17, 18, 19, 20]', '简介：神様のメモ帐（神的记事本）是日本作家杉井光所做轻小说，并衍生成为漫画，动画及广播剧作品。该作故事讲述了“尼特侦探”爱丽丝和身为侦探助手的藤岛鸣海所编织的无奈奇怪但稍微会展现出一点勇气的故事。在闹区的巷道中，有著一间拉面店「ラーメンはなまる」（花丸拉面店），後门通往「NEET侦探事务所」。街上尼特族的统御者爱莉丝，以及平常不认真过日子的尼特族们，为了解决事件而奋斗……', '/src/assets/two.jpg'),
(3, '纯白交响曲', '["恋爱", "校园", "美少女"]', 600, 9000, '连载中', 2024, 2, 9.2, 654, '[21, 22, 23, 24, 25, 26, 27, 28, 29, 30]', '简介：男主角瓜生新吾是“各务台学园”的普通学生。不过该学校由于各种原因的关系，在新学期开始的时候将同名叫“结姬女子学园”的名门女校进行合并。为了让学生能够更加融洽地相处，校方在新学期开始之前实行了试行合并，包括新吾在内的数十名各务台学园生试验性地到结女学园上学。而男生的出现也在女校引发了不小的骚动，众多个性丰富的妹子们也扎堆似的出现在了男主角的面前。那么包围在后宫般的环境当中，新吾又将从何选择呢……', '/src/assets/three.jpg'),
(4, '罪恶王冠', '["冒险", "科幻", "悬疑"]', 700, 6000, '完结', 2011, 3, 8.3, 514, '[31, 32, 33, 34, 35, 36, 37, 38, 39, 40]', '简介：处于无政府状态的日本，受到了由超国家之间所组织成的名为“GHQ”的组织的武力介入并接受其统治，东京的六本木更成为被封锁的地区。之后又以名为“lost christmas（失落的圣诞）”的事件为契机，日本失去了独立国家的实质权力，并被赋予了表面上的自治权，由此人们开始享受短暂的和平。时光流逝，10年后的2039年。少年樱满集——怀抱着抑郁的心境，并对世间冷眼相待——在天王……', '/src/assets/four.jpg');





