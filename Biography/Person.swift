//
//  Person.swift
//  Biography
//
//  Created by RubyMaine on 14/08/2023.
//  Copyright © 2023 RubyMaine. All rights reserved.
//

import Foundation

struct Person: Identifiable, Codable {
    
    var id: String { name }
    
    let name: String
    let description: String
    let imageName: String
    let shortDescription: String
    let sections: [PersonSection]?
}

struct PersonSection: Identifiable, Codable {
    
    var id: String { name }
    
    let name: String
    var picturesImageName: [String]
    
}


extension Person: Equatable {
    static func == (lhs: Person, rhs: Person) -> Bool {
        lhs.id == rhs.id
    }
}

extension Person {
    
    static var stubbed: [Person] {
        let url = Bundle.main.url(forResource: "biography_list", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        let people = try! JSONDecoder().decode([Person].self, from: data)
        return people
    }
    
    static var stubbedPeople: [Person] {
        [
            Person(name: "Steven P. Jobs", description: """
            Стивен Пол Джобс родился 24 февраля 1955 года в Сан-Франциско, штат Калифорния, в семье студентов Абдула Фаттаха Джандали и Джоан Кэрол Шибл, которые в то время не были женаты и отдали его на усыновление. Его взяла к себе пара из рабочего класса, Пол и Клара Джобс, и он вырос с ними в Маунтин-Вью, Калифорния.

            Он учился в средней школе Homestead в Купертино, Калифорния, и поступил в Reed College в Портленде, штат Орегон, в 1972 году, но бросил учебу всего через один семестр, оставаясь, чтобы «зайти» на интересующие его курсы.

            Он устроился на работу к производителю видеоигр Atari, чтобы собрать достаточно денег для поездки в Индию, и вернулся оттуда буддистом.

            Вернувшись в Купертино, он вернулся в Atari, где все еще работал его старый друг Стив Возняк. Возняк собирал свой собственный компьютер, и в 1976 году Джобс предварительно продал 50 из еще не изготовленных компьютеров в местный магазин и сумел купить компоненты в кредит исключительно на основании заказа, что позволило им собрать Apple I без каких-либо дополнительных затрат. финансирования вообще.

            В 1977 году последовал Apple II, и вскоре после этого была создана компания Apple Computer. Apple II приписывают начало бума персональных компьютеров, его популярность побудила IBM поспешно разработать свой собственный ПК. К тому времени, когда производство Apple II закончилось в 1993 году, было продано более 6 миллионов единиц.

            Вдохновленные поездкой в Исследовательский центр Xerox в Пало-Альто (PARC), инженеры Apple начали работу над коммерческим приложением идей графического интерфейса, которые они там увидели. Получившаяся машина, Lisa, была дорогой и так и не достигла коммерческого успеха, но в 1984 году был запущен еще один компьютер Apple, использующий ту же концепцию интерфейса WIMP (Windows, Icons, Menus, Pointer). Рекламный ролик во время Суперкубка 1984 года, снятый Ридли Скоттом, представил миру компьютер Macintosh (фактически, реклама была показана по местному телеканалу в Айдахо 31 декабря 1983 года и в кинотеатрах в январе 1984 года до того, как она стала знаменитой). премьера» 22 января во время Суперкубка).

            В 1985 году Джобс был уволен из Apple и сразу же основал другую компьютерную компанию NeXT. Его машины не имели коммерческого успеха, но некоторые из технологий позже использовались Apple, когда Джобс в конце концов туда вернулся.

            Тем временем в 1986 году Джобс купил The Computer Graphics Group у Lucasfilm. Группа отвечала за производство высококачественного оборудования для компьютерной графики, но под своим новым названием Pixar она начала производить новаторскую компьютерную анимацию. Их первая игра под названием Pixar, Luxo Jr. (1986), получила признание критиков и публики, а в 1991 году Pixar подписала соглашение с Disney, с которым у нее уже были отношения, на производство серии художественных фильмов, начиная с «Истории игрушек» ( 1995).

            В 1996 году Apple купила NeXT, и Джобс вернулся в Apple, став ее генеральным директором. С помощью промышленного дизайнера британского происхождения Джонатана Айва Джобс вернул свою собственную эстетическую философию больной компании и начал менять ее состояние с выпуска iMac в 1998 году. В 2001 году последовал MP3-плеер компании, iPod. , с выпуском iPhone в 2007 году и iPad в 2010 году. Программный музыкальный проигрыватель компании, iTunes, превратился в онлайн-магазин музыки (и, в конечном итоге, фильмов и программных приложений), помогая популяризировать идею «легальной» загрузки. развлекательный контент.

            В 2003 году у Джобса был диагностирован рак поджелудочной железы, и в 2004 году ему сделали операцию. Несмотря на успех этой операции, он все больше заболевал и в 2009 году ему сделали пересадку печени. Он вернулся к работе после шестимесячного перерыва, но в конце концов ушел в отставку в августе 2011 года. после очередного отпуска по болезни, который начался в январе 2011 года. Он умер 5 октября 2011 года.
            """
                , imageName: "sjobs", shortDescription: "Стивен Пол Джобс — американский бизнес-магнат, промышленный дизайнер, инвестор и владелец СМИ.", sections: [
                    PersonSection(name: "Apple Компьютер (1976-1985)", picturesImageName: ["sjobs1-1", "sjobs1-2", "sjobs1-3", "sjobs1-4"]),
                    PersonSection(name: "NeXT Компьютер (1985-1997)", picturesImageName: ["sjobs2-1", "sjobs2-2", "sjobs2-3", "sjobs2-4"]),
                    PersonSection(name: "Вернуться в Apple (1997-2011)", picturesImageName: ["sjobs4-1", "sjobs4-2", "sjobs4-3", "sjobs4-4"]),
                    PersonSection(name: "Pixar & Disney", picturesImageName: ["sjobs3-1", "sjobs3-2", "sjobs3-3"])
                    
            
            ]),
            Person(name: "Albert Einstein", description: """
                        Альберт Эйнштейн родился в Ульме, в Вюртемберге, Германия, 14 марта 1879 года. Шесть недель спустя семья переехала в Мюнхен, где он позже начал свое обучение в гимназии Луитпольда. Позже они переехали в Италию, и Альберт продолжил свое образование в Арау, Швейцария, а в 1896 году он поступил в Швейцарскую федеральную политехническую школу в Цюрихе, чтобы стать учителем физики и математики. В 1901 году, когда он получил диплом, он получил швейцарское гражданство и, поскольку не смог найти преподавательскую должность, принял должность технического ассистента в Швейцарском патентном ведомстве. В 1905 году он получил докторскую степень.

                        Во время своего пребывания в Патентном ведомстве и в свободное время он произвел большую часть своей замечательной работы, и в 1908 году он был назначен приват-доцентом в Берне. В 1909 году он стал экстраординарным профессором в Цюрихе, в 1911 году профессором теоретической физики в Праге, а в следующем году вернулся в Цюрих, чтобы занять аналогичную должность. В 1914 году он был назначен директором Физического института кайзера Вильгельма и профессором Берлинского университета. Он стал гражданином Германии в 1914 г. и оставался в Берлине до 1933 г., когда он отказался от своего гражданства по политическим причинам и эмигрировал в Америку, чтобы занять должность профессора теоретической физики в Принстоне*. Он стал гражданином США в 1940 году и ушел в отставку в 1945 году.

                        После Второй мировой войны Эйнштейн был ведущей фигурой в Движении за мировое правительство, ему предложили пост президента Государства Израиль, от которого он отказался, и он сотрудничал с доктором Хаимом Вейцманом в создании Еврейского университета в Иерусалиме.

                        У Эйнштейна всегда было четкое представление о проблемах физики и решимость их решать. У него была собственная стратегия, и он мог визуализировать основные этапы на пути к своей цели. Свои главные достижения он рассматривал лишь как ступеньки для следующего продвижения вперед.

                        В начале своей научной работы Эйнштейн осознал недостатки ньютоновской механики, и его специальная теория относительности возникла из попытки согласовать законы механики с законами электромагнитного поля. Он занимался классическими проблемами статистической механики и проблемами их слияния с квантовой теорией: это привело к объяснению броуновского движения молекул. Он исследовал тепловые свойства света с низкой плотностью излучения, и его наблюдения заложили основу фотонной теории света.

                        В первые дни своего пребывания в Берлине Эйнштейн постулировал, что правильная интерпретация специальной теории относительности должна также дать теорию гравитации, и в 1916 году он опубликовал свою статью по общей теории относительности. За это время он также внес свой вклад в проблемы теории излучения и статистической механики.

                        В 1920-х годах Эйнштейн приступил к построению единых теорий поля, хотя он продолжал работать над вероятностной интерпретацией квантовой теории и продолжал эту работу в Америке. Он внес свой вклад в статистическую механику, разработав квантовую теорию одноатомного газа, а также проделал ценную работу в связи с вероятностями атомных переходов и релятивистской космологией.

                        После выхода на пенсию он продолжал работать над объединением основных понятий физики, применяя подход, противоположный большинству физиков, геометризацию.

                        Исследования Эйнштейна, конечно, хорошо описаны, и его наиболее важные работы включают «Специальную теорию относительности» (1905 г.), «Относительность» (английские переводы, 1920 и 1950 гг.), «Общую теорию относительности» (1916 г.), «Исследования по теории броуновского движения» (1926 г.) и «Эволюция физики» (1938). Среди его ненаучных работ «О сионизме» (1930), «Почему война? (1933), «Моя философия» (1934) и «Из моих последних лет» (1950), пожалуй, самые важные.

                        Альберт Эйнштейн получил почетные степени доктора естественных наук, медицины и философии многих европейских и американских университетов. В 1920-е годы он читал лекции в Европе, Америке и на Дальнем Востоке, был удостоен стипендии или членства во всех ведущих научных академиях мира. Он получил множество наград в знак признания своей работы, в том числе медаль Копли Лондонского королевского общества в 1925 году и медаль Франклина Института Франклина в 1935 году.

                        Одаренность Эйнштейна неизбежно привела к тому, что он много времени проводил в интеллектуальном одиночестве, а для расслабления музыка играла важную роль в его жизни. Он женился на Милеве Марич в 1903 году, у них родились дочь и два сына; их брак был расторгнут в 1919 году, и в том же году он женился на своей двоюродной сестре Эльзе Левенталь, которая умерла в 1936 году. Он умер 18 апреля 1955 года в Принстоне, штат Нью-Джерси.
                        """
                , imageName: "einstein", shortDescription: "Альберт Эйнштейн был немецким физиком-теоретиком, разработавшим теорию относительности, одну из двух основ современной физики. Его работа также известна своим влиянием на философию науки.", sections: nil),
            Person(name: "Martin Luther King, Jr.", description: """
                               Мартин Лютер Кинг-младший (15 января 1929 г. - 4 апреля 1968 г.) родился Майклом Лютером Кингом-младшим, но позже его имя было изменено на Мартин. Его дед начал долгое пребывание в семье в качестве пасторов баптистской церкви Эбенезера в Атланте с 1914 по 1931 год; его отец служил с тех пор и по настоящее время, а с 1960 года до своей смерти Мартин Лютер был сопастором. Мартин Лютер посещал сегрегированные государственные школы в Джорджии, окончив среднюю школу в возрасте пятнадцати лет; он получил степень бакалавра в 1948 году в Морхаус-колледже, известном негритянском учебном заведении Атланты, которое окончили его отец и дед. После трех лет богословского обучения в теологической семинарии Крозера в Пенсильвании, где он был избран президентом преимущественно белого старшего класса, он был удостоен степени бакалавра философии. в 1951 году. Получив стипендию Крозера, он поступил в аспирантуру Бостонского университета, завершил обучение в докторантуре в 1953 году и получил степень в 1955 году. В Бостоне он встретил и женился на Коретте Скотт, молодой женщине с незаурядными интеллектуальными и художественные достижения. В семье родились два сына и две дочери.

                               В 1954 году Мартин Лютер Кинг стал пастором баптистской церкви на Декстер-авеню в Монтгомери, штат Алабама. Всегда активный борец за гражданские права представителей своей расы, Кинг к тому времени уже был членом исполнительного комитета Национальной ассоциации содействия развитию цветного населения, ведущей организации такого рода в стране. Тогда, в начале декабря 1955 года, он был готов взять на себя руководство первой крупной ненасильственной демонстрацией современности негров в Соединенных Штатах, автобусным бойкотом, описанным Гуннаром Яном в его речи на презентации в честь лауреата. Бойкот длился 382 дня. 21 декабря 1956 года, после того как Верховный суд США объявил неконституционными законы, требующие раздельного проезда в автобусах, негры и белые ездили в автобусах на равных. В эти дни бойкота Кинг был арестован, его дом разбомбили, он подвергся личным оскорблениям, но в то же время он проявил себя как негритянский лидер первого ранга.

                               В 1957 году он был избран президентом Южно-христианской конференции лидеров, организации, созданной для обеспечения нового руководства растущим движением за гражданские права. Идеалы этой организации он взял из христианства; свои операционные методы от Ганди. За одиннадцатилетний период между 1957 и 1968 годами Кинг проехал более шести миллионов миль и выступил более двух с половиной тысяч раз, появляясь везде, где происходили несправедливость, протесты и действия; а между тем он написал пять книг, а также множество статей. В эти годы он возглавил массовую акцию протеста в Бирмингеме, штат Алабама, которая привлекла внимание всего мира, создав то, что он назвал коалицией совести. и вдохновляя его «Письмо из бирмингемской тюрьмы», манифест негритянской революции; он планировал акции в Алабаме для регистрации негров в качестве избирателей; он руководил мирным маршем в Вашингтоне, округ Колумбия, 250 000 человек, перед которыми он выступил со своим обращением «У меня есть мечта», он совещался с президентом Джоном Ф. Кеннеди и агитировал за президента Линдона Б. Джонсона; его арестовывали более двадцати раз и подвергали нападению не менее четырех раз; ему было присвоено пять почетных степеней; был назван журналом Time Человеком года в 1963 году; и стал не только символическим лидером американских негров, но и мировой фигурой.

                               В возрасте тридцати пяти лет Мартин Лютер Кинг-младший стал самым молодым человеком, получившим Нобелевскую премию мира. Когда его уведомили о его выборе, он объявил, что передаст призовой фонд в размере 54 123 долларов на развитие движения за гражданские права.

                               Вечером 4 апреля 1968 года, когда он стоял на балконе своего номера в мотеле в Мемфисе, штат Теннесси, где он должен был возглавить марш протеста в знак сочувствия бастующим мусорщикам этого города, он был убит.
                               """
                , imageName: "mluther", shortDescription: "Мартин Лютер Кинг-младший был американским христианским священником и активистом, который стал самым заметным представителем и лидером Движения за гражданские права с 1955 года до своего убийства в 1968 году.", sections: nil),
            
            Person(name: "Maria Callas", description: """
                                                       Мария Каллас, настоящее имя Мария Сесилия София Анна Калогеропулос (род. 2 декабря 1923, Нью-Йорк, Нью-Йорк, США — умерла 16 сентября 1977, Париж, Франция), греческое оперное сопрано американского происхождения, возродившая классические колоратурные партии в середины 20 века с ее лирической и драматической многогранностью.

                                                       Каллас была дочерью греческих иммигрантов и рано проявила интерес к пению. В сопровождении матери она уехала из Соединенных Штатов в 1937 году, чтобы учиться в Афинской консерватории у сопрано Эльвиры де Идальго. Она пела в Cavalleria rusticana и Boccaccio и вернулась в Соединенные Штаты в 1945 году.

                                                       Ее карьера всерьез началась в августе 1947 года, когда она появилась в Вероне в «Джоконде». Вскоре под руководством дирижера Туллио Серафина дебютировала в Венеции, Турине и Флоренции. В 1949 году она впервые появилась в Риме, Буэнос-Айресе и Неаполе, а в 1950 году — в Мехико. Ее мощное сопрано, способное выдержать как лирические, так и колоратурные роли, было очень драматичным; в сочетании с ее сильным чувством театра и скрупулезно высокими художественными стандартами это быстро вывело ее на передний план современного оперного таланта. Ее способности сделали возможным возрождение произведений бельканто 19-го века, особенно произведений Винченцо Беллини и Гаэтано Доницетти, которые давно были исключены из стандартного репертуара.

                                                       Каллас дебютировала в престижном миланском «Ла Скала» в 1950 году, спев в I Vespri siciliani. В 1952 году она появилась в Ковент-Гарден, Лондон. Ее американский дебют состоялся в ноябре 1954 года в Лирической опере Чикаго в главной роли Нормы, спектакль, который она повторила перед рекордной аудиторией в Метрополитен-опера в Нью-Йорке. Записи Каллас были встречены с энтузиазмом, и она была одной из самых популярных певиц того времени. Ее широко разрекламированный непостоянный темперамент привел к нескольким затяжным распрям с соперниками и менеджерами.

                                                       После последнего оперного спектакля в партии Тоски в Ковент-Гарден (июль 1965 г.) Каллас сняла фильм «Медея» (1969 г.). В 1966 году она стала гражданкой Греции и отказалась от гражданства США. Она вела мастер-классы по опере в Джульярде (1972) перед последним концертным турне по США и Европе (1973–74). К моменту выхода на пенсию она исполнила более 40 различных ролей и записала более 20 полных опер. Личность Каллас и философия исполнения ярко показаны в пьесе Терренса МакНалли «Мастер-класс» (впервые поставлена и опубликована в 1995 году), основанной на ее уроках в Джульярде.
                                                       """
                , imageName: "callas", shortDescription: "Мария Каллас, Commendatore OMRI была греческим сопрано американского происхождения. Она была одной из самых известных и влиятельных оперных певиц 20 века. Многие критики высоко оценили ее технику бельканто, широкий голос и драматические интерпретации.", sections: nil),
            Person(name: "Amelia Earhart", description: """
                                                       Амелия Эрхарт осталась в сознании американцев как одна из самых знаменитых авиаторов мира. Амелия остается символом силы и настойчивости американских женщин, а также авантюрного духа, столь необходимого для американской личности.

                                                       Она родилась в Атчисоне, штат Канзас, 24 июля 1897 года, в семье железнодорожного поверенного. Детство она провела в разных городах, включая Атчисон и Канзас-Сити, штат Канзас, и Де-Мойн, штат Айова. В 19 лет Амелия поступила в школу Огонц недалеко от Филадельфии, штат Пенсильвания. Два года спустя, после посещения своей сестры Мюриэль в Торонто, Канада, Амелия почувствовала необходимость бросить школу. Пройдя курс по оказанию первой помощи Красного Креста, Амелия записалась в качестве помощника медсестры в военный госпиталь Спадина в Торонто, Канада, ухаживая за ранеными солдатами во время Первой мировой войны. В следующем году Амелия поступила на подготовительный курс Колумбийского университета в Нью-Йорке. Вскоре после этого родители Амелии настояли на том, чтобы она переехала в Калифорнию, где они жили.

                                                       Научившись летать в Калифорнии, она увлеклась авиацией в качестве хобби, подрабатывая случайными заработками, чтобы оплачивать уроки полетов. В 1922 году с финансовой помощью своей сестры Мюриэль и матери Эми Отис Эрхарт она купила свой первый самолет Kinner Airster.

                                                       После развода родителей Амелия вернулась на восток, где работала социальным работником в Denison House в Бостоне, штат Массачусетс. Именно там она была выбрана в качестве первой женщины-пассажира трансатлантического рейса в 1928 году ее будущим мужем, издателем Джорджем Палмером Патнэмом.
                                                       """
                , imageName: "earhart", shortDescription: "Амелия Мэри Эрхарт была пионером американской авиации и писателем. Эрхарт стала первой женщиной-летчиком, совершившей в одиночку перелет через Атлантический океан. Она установила множество других рекордов, написала книги-бестселлеры о своем летном опыте и сыграла важную роль в создании организации «Девяносто девять» для женщин-пилотов.", sections: nil),
            Person(name: "Thomas Edison", description: """
                                       Люди часто говорят, что Эдисон был гением. Он ответил: «Гений — это упорный труд, упорство и здравый смысл».

                                       Томас Альва Эдисон родился 11 февраля 1847 года в Милане, штат Огайо. В 1854 году, когда ему было семь лет, семья переехала в Мичиган, где Эдисон провел остаток своего детства.

                                       «Ал», как его звали в детстве, недолго ходил в школу. Он так плохо учился, что его мать, бывшая учительница, учила сына дома. Ал научился любить читать, и эту привычку он сохранил на всю оставшуюся жизнь. Он также любил проводить эксперименты в подвале.

                                       Ал не только много играл, но и много работал. В возрасте 12 лет он продавал фрукты, закуски и газеты в поезде как «мясник новостей». (Поезда были новейшим способом передвижения, прорезавшим глушь Америки.) Он даже печатал свою собственную газету Grand Trunk Herald в движущемся поезде.

                                       В 15 лет Эл скитался по стране в качестве «телеграфиста-бродяги». Используя своего рода алфавит, называемый азбукой Морзе, он отправлял и получал сообщения по телеграфу. Несмотря на то, что он уже терял слух, он все еще мог слышать щелчки телеграфа. В течение следующих семи лет он переезжал более дюжины раз, часто работая всю ночь, принимая сообщения для поездов и даже для армии Союза во время Гражданской войны. В свободное время он разбирал вещи, чтобы посмотреть, как они работают. В конце концов, он решил изобретать вещи сам.

                                       После провала своего первого изобретения, электрического регистратора голосов, Эдисон переехал в Нью-Йорк. Там он улучшил способ работы биржевого тикера. Это был его большой прорыв. К 1870 году его компания производила биржевой тикер в Ньюарке, штат Нью-Джерси. Он также улучшил телеграф, заставив его отправлять до четырех сообщений одновременно.
                                       
                                       В это время он женился на своей первой жене, Мэри Стилвелл, на Рождество 1871 года. У них было трое детей — Марион, Томас-младший и Уильям. Желая найти более тихое место, чтобы больше заниматься изобретениями, Эдисон переехал из Ньюарка в Менло-Парк, штат Нью-Джерси, в 1876 году. Там он построил свою самую известную лабораторию.

                                       Он был не один в Менло-Парке. Эдисон нанял «макеров», чтобы помочь ему. Эти «мошенники» приехали со всего мира, чтобы нажить состояние в Америке. Они часто не спали всю ночь, работая с «главным мусорщиком», самим Эдисоном. Его иногда называют «Волшебником Менло-Парка», потому что он создал там две из трех своих величайших работ.

                                       Фонограф был первой машиной, которая могла записывать звук чьего-то голоса и воспроизводить его. В 1877 году Эдисон записал первые слова на листе оловянной фольги. Он продекламировал детскую песенку «У Мэри был ягненок», и фонограф воспроизвел ему слова. Это придумал человек, чей слух был настолько плох, что он считал себя «глухим»!

                                       Начиная с 1878 года, Эдисон и макеры работали над одним из своих величайших достижений. Система электрического освещения представляла собой нечто большее, чем просто лампа накаливания или «лампочка». Эдисон также разработал систему электростанций, производящих электроэнергию, и проводку, по которой она поступает в дома людей. Представьте себе все, что вы «подключаете». Какой была бы ваша жизнь без них?

                                       В 1885 году, через год после смерти его первой жены, Эдисон познакомился с 20-летней женщиной по имени Мина Миллер. Ее отец был изобретателем в штате Огайо, где родился Эдисон. Эдисон научил ее азбуке Морзе. Даже когда рядом были другие, пара могла тайно «разговаривать» друг с другом. Однажды он задал ей вопрос: выйдет ли она за него замуж? Она постучала в ответ на слово «да».

                                       Мина Эдисон хотела дом в деревне, поэтому Эдисон купил Гленмонт, дом с 29 комнатами и 13-1/2 акрами земли в Вест-Ориндж, штат Нью-Джерси. Они поженились 24 февраля 1886 года и родили троих детей: Мадлен, Чарльза и Теодора.

                                       Год спустя Эдисон построил лабораторию в Уэст-Ориндже, которая была в десять раз больше, чем лаборатория в Менло-Парке. На самом деле это была одна из крупнейших лабораторий в мире, почти такая же известная, как сам Эдисон. До поздней ночи здания лабораторий светились электрическим светом, а Волшебник и его «придурки» превращали мечты Эдисона в изобретения. Однажды «главный мусорщик» работал три дня подряд, лишь ненадолго вздремнув. Эдисон получил половину из своих 1093 патентов в Уэст-Ориндж.

                                       Но Эдисон сделал больше, чем изобрел. Здесь Эдисон мог придумать, как сделать более совершенный фонограф, например, построить его с помощью своих мастеров, заставить их протестировать и заставить его работать, а затем производить его на фабриках, окружающих его лабораторию. Затем этот улучшенный фонограф можно было продавать по всему миру.

                                       Эдисон не только несколько раз усовершенствовал фонограф, но и работал над рентгеновскими лучами, аккумуляторными батареями и первой говорящей куклой. В West Orange он также работал над одной из своих величайших идей: кинофильмами или «фильмами». Изобретения, сделанные здесь, изменили наш образ жизни даже сегодня. Он работал здесь до своей смерти 18 октября 1931 года в возрасте 84 лет.

                                       К тому времени все слышали о «Волшебнике» и равнялись на него. Весь мир назвал его гением. Но он знал, что одной хорошей идеи недостаточно. Чтобы воплотить мечты в реальность, нужно много работать. Вот почему Эдисон любил говорить: «Гений — это 1% вдохновения и 99% пота».
                                       """
                , imageName: "tedison", shortDescription: "Томас Альва Эдисон был американским изобретателем и бизнесменом, которого называют величайшим изобретателем Америки. Он разработал множество устройств в таких областях, как производство электроэнергии, средства массовой информации, звукозапись и кино.", sections: nil),
            Person(name: "Muhammad Ali", description: """
                                                 Мухаммед Али был боксером, филантропом и общественным деятелем, которого повсеместно считают одним из величайших спортсменов 20 века. Али стал олимпийским чемпионом в 1960 году и чемпионом мира по боксу в супертяжелом весе в 1964 году.

                                                 После дисквалификации за отказ от военной службы Али еще два раза восстанавливал титул чемпиона мира в супертяжелом весе в течение 1970-х годов, попутно выиграв знаменитые поединки с Джо Фрейзером и Джорджем Форманом. В 1984 году у Али была диагностирована болезнь Паркинсона, и он посвятил большую часть своего времени благотворительности, заработав в 2005 году Президентскую медаль свободы.
                                                 """
                , imageName: "mali", shortDescription: "Мухаммед Али был американским профессиональным боксером, активистом и филантропом. По прозвищу «Величайший», он широко известен как один из самых значительных и знаменитых спортивных деятелей 20-го века и как один из величайших боксеров всех времен.", sections: nil),
            Person(name: "Mahatma Gandhi", description: """
                                                       Махатма Ганди, по имени Мохандас Карамчанд Ганди (родился 2 октября 1869 года, Порбандар, Индия — умер 30 января 1948 года, Дели), индийский юрист, политик, общественный деятель и писатель, ставший лидером националистического движения против британцев. правления Индии. Таким образом, он стал считаться отцом своей страны. Ганди получил международное признание за свою доктрину ненасильственного протеста (сатьяграха) для достижения политического и социального прогресса.

                                                       В глазах миллионов своих соотечественников Ганди был Махатмой («Великая душа»). Бездумное обожание огромных толп, собравшихся посмотреть на него на протяжении всего маршрута его гастролей, превратило их в суровое испытание; он едва мог работать днем и отдыхать ночью. «Беды Махатм, — писал он, — известны только Махатмам». Его слава распространилась по всему миру еще при жизни и только возросла после его смерти. Имя Махатмы Ганди сейчас одно из самых общепризнанных на земле.
                                                       """
                , imageName: "gandhi", shortDescription: "Мохандас Карамчанд Ганди был индийским юристом, антиколониальным националистом и специалистом по политической этике, который использовал ненасильственное сопротивление, чтобы возглавить успешную кампанию за независимость Индии от британского правления и, в свою очередь, вдохновил движения за гражданские права и свободы во всем мире.", sections: nil),
            Person(name: "John Lennon", description: """
                                                       Джон Уинстон Оно Леннон MBE (урожденный Джон Уинстон Леннон, 9 октября 1940 - 8 декабря 1980) был английским певцом, автором песен и борцом за мир, который получил всемирную известность как основатель, со-ведущий вокалист и ритм-гитарист The Beatles. Его партнерство в написании песен с Полом Маккартни остается самым успешным в музыкальной истории. В 1969 году он основал группу Plastic Ono Band со своей второй женой Йоко Оно. После распада «Битлз» в 1970 году Леннон продолжал выступать сольно и вместе с Оно.

                                                       Леннон родился в Ливерпуле и в подростковом возрасте увлекся скиффлом. В 1956 году он сформировал свою первую группу Quarrymen, которая в 1960 году превратилась в Beatles. Первоначально он был фактическим лидером группы, но постепенно эта роль перешла к Маккартни. Леннон отличался бунтарским характером и едким остроумием в музыке, письмах, рисунках, фильмах и интервью. В середине 1960-х у него было опубликовано две книги: «В его собственном письме» и «Испанец в творчестве», обе - сборники бессмысленных сочинений и штриховых рисунков. Начиная с « All You Need Is Love » 1967 года, его песни были приняты в качестве гимнов антивоенным движением и более широкой контркультурой.

                                                       С 1968 по 1972 год Леннон записал с Оно более дюжины пластинок, в том числе трилогию авангардных альбомов, свой первый сольный альбом John Lennon/Plastic Ono Band и синглы «Give Peace a Chance», «Instant Карма!», «Представьте себе» и «Счастливого Рождества (Война окончена)». Вызванный спорами из-за его политической и миротворческой активности, после переезда в Нью-Йорк в 1971 году его критика войны во Вьетнаме привела к трехлетней попытке администрации Никсона депортировать его. В 1975 году Леннон ушел из музыкального бизнеса, чтобы вырастить своего маленького сына Шона, а в 1980 году вернулся с совместной работой Оно «Double Fantasy». Он был застрелен в арке своего многоквартирного дома на Манхэттене фанатом Beatles Марком Дэвидом Чепменом через три недели после выпуска альбома.

                                                       В 2002 году Леннон занял восьмое место в опросе BBC среди 100 величайших британцев, а в 2008 году журнал Rolling Stone поставил его на пятое место среди величайших певцов всех времен. В 1987 году он был введен в Зал славы авторов песен. Леннон был дважды занесен в Зал славы рок-н-ролла: в 1988 году как участник группы «Битлз», а в 1994 году как сольный исполнитель.
                                                       """
                , imageName: "lennon", shortDescription: "Джон Уинстон Оно Леннон MBE был английским певцом, автором песен и борцом за мир, получившим всемирную известность как основатель, со-ведущий вокалист и ритм-гитарист The Beatles. Его партнерство в написании песен с Полом Маккартни остается самым успешным в музыкальной истории.", sections: nil)
        ]
    }
    
    
}
