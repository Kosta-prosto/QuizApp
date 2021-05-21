//
//  FirstTourModel.swift
//  QuizApp
//
//  Created by Константин Булышев on 01.05.2021.
//

import Foundation

struct Answer {
    let text: String
    let status: Bool
}

struct Question {
    let text: String
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        let qustions = [
            Question(text: "Сколько лет шла столетняя война?",
                 answers: [
                    Answer(text: "99",
                        status: false),
                    Answer(text: "101",
                           status: false),
                    Answer(text: "107",
                           status: false),
                    Answer(text: "116",
                           status: true)
                 ]),
            Question(text: "Какому государству принадлежит данный флаг?",
                     answers: [
                        Answer(text: "Уганда",
                            status: false),
                        Answer(text: "Суринам",
                               status: false),
                        Answer(text: "Сомали",
                               status: true),
                        Answer(text: "Индонезия",
                               status: false)
                     ]),
            Question(text: "Какого эпитета был удостоен царь Александр II?",
                     answers: [
                        Answer(text: "Железный",
                            status: false),
                        Answer(text: "Освободитель",
                               status: true),
                        Answer(text: "Благословенный",
                               status: false),
                        Answer(text: "Миротворец",
                               status: false)
                     ]),
            Question(text: "Какое событие произошло 18 февраля 1979 г.?",
                     answers: [
                        Answer(text: "Выпал снег в Сахаре",
                            status: true),
                        Answer(text: "Появился первый мобильный телефон",
                               status: false),
                        Answer(text: "Зимбабве получило независимость",
                               status: false),
                        Answer(text: "В Токио произошла автомобильная авария с участием 16 автобусов",
                               status: false)
                     ]),
            Question(text: "Сколько земных лет занимает оборот вокруг Солнца у Нептуна?",
                     answers: [
                        Answer(text: "69",
                            status: false),
                        Answer(text: "123",
                               status: false),
                        Answer(text: "165",
                               status: true),
                        Answer(text: "211",
                               status: false)
                        ]),
            Question(text: "Рекорд по количеству номинаций на премию Оскар и побед в них принадлежит Уолту Диснею, сколько раз он получал статуэтку?",
                     answers: [
                        Answer(text: "26",
                            status: true),
                        Answer(text: "31",
                               status: false),
                        Answer(text: "43",
                               status: false),
                        Answer(text: "59",
                               status: false)
                        ]),
            Question(text: "Сатурн обладает самым большим количеством спутников среди планет Солнечной системы. Сколько же их?",
                     answers: [
                        Answer(text: "45",
                            status: false),
                        Answer(text: "57",
                               status: false),
                        Answer(text: "82",
                               status: true),
                        Answer(text: "96",
                               status: false)
                        ]),
            Question(text: "Братья Уорнеры стояли у истоков кинокомпании 'Warner Bros. Entertainment, Inc.'. А сколько было братьев?",
                     answers: [
                        Answer(text: "3",
                            status: false),
                        Answer(text: "4",
                               status: true),
                        Answer(text: "5",
                               status: false),
                        Answer(text: "6",
                               status: false)
                        ]),
            Question(text: "В каком году в Москве появились подземные пешеходные переходы?",
                     answers: [
                        Answer(text: "1942",
                            status: false),
                        Answer(text: "1949",
                               status: false),
                        Answer(text: "1953",
                               status: false),
                        Answer(text: "1959",
                               status: true)
                        ]),
            Question(text: "Норвежец Уле-Эйнар Бьердален известен как самый титулованный спортсмен в истории биатлона. Cколько раз он побеждал на ЧМ?",
                     answers: [
                        Answer(text: "18",
                            status: false),
                        Answer(text: "20",
                               status: true),
                        Answer(text: "22",
                               status: false),
                        Answer(text: "23",
                               status: false)
                        ]),
            Question(text: "Работы кого из перечисленных художников относятся к направлению постимпрессионизма?",
                     answers: [
                        Answer(text: "Винсент Виллем Ван Гог",
                            status: true),
                        Answer(text: "Сальвадор Дали",
                               status: false),
                        Answer(text: "Иван Константинович Айвазовский",
                               status: false),
                        Answer(text: "Эдуард Мане",
                               status: false)
                        ]),
            Question(text: "17 октября в календаре праздников ООН является днем?",
                     answers: [
                        Answer(text: "Велосипеда",
                            status: false),
                        Answer(text: "Борьбы за ликвидацию нищеты",
                               status: true),
                        Answer(text: "Борьбы с туберкулезом",
                               status: false),
                        Answer(text: "Слепых",
                               status: false)
                        ]),
            Question(text: "Какое из этих государств расположено в четырех полушариях Земли: Северном, Южном, Западном и Восточном?",
                     answers: [
                        Answer(text: "Антигуа и Барбуда",
                            status: false),
                        Answer(text: "Восточный Тимор",
                               status: false),
                        Answer(text: "Кирибати",
                               status: true),
                        Answer(text: "Кабо-Верде",
                               status: false)
                        ]),
            Question(text: "Именем кого названа премия, которая рассматривается, как одна из высших наград в области геологических исследований и известна, как «Нобелевская премия по геологии»?",
                     answers: [
                        Answer(text: "Ветлесена",
                            status: true),
                        Answer(text: "Неванлинны",
                               status: false),
                        Answer(text: "Шао",
                               status: false),
                        Answer(text: "Крафорда",
                               status: false)
                        ]),
            Question(text: "Какое прозвище получил американский пловец Майкл Фелпс, 23-кратный олимпийский чемпион, 26-кратный чемпион мира в 50-метровом бассейне, абсолютный рекордсмен по количеству золотых наград в истории чемпионатов мира по водным видам спорта?",
                     answers: [
                        Answer(text: "Левиафан",
                            status: false),
                        Answer(text: "Субмарина",
                               status: false),
                        Answer(text: "Нептун",
                               status: false),
                        Answer(text: "Летающая рыба",
                               status: true)
                        ]),
            Question(text: "В каком государстве расположен Готардский тоннель – самый длинный тоннель в мире, протяженность которого составляет 57 км?",
                     answers: [
                        Answer(text: "Япония",
                            status: false),
                        Answer(text: "США",
                               status: false),
                        Answer(text: "Швейцария",
                               status: true),
                        Answer(text: "Норвегия",
                               status: false)
                        ]),
            Question(text: "Какое из этих семейств относится к подотряду собакообразные?",
                     answers: [
                        Answer(text: "Выверровые",
                            status: false),
                        Answer(text: "Мангустовые",
                               status: false),
                        Answer(text: "Енотовые",
                               status: true),
                        Answer(text: "Гиеновые",
                               status: false)
                        ]),
            Question(text: "Сколько длилась война между Англией и Занзибаром, известная как самая короткая в истории?",
                     answers: [
                        Answer(text: "15 минут",
                            status: false),
                        Answer(text: "27 минут",
                               status: false),
                        Answer(text: "38 минут",
                               status: true),
                        Answer(text: "42 минуты",
                               status: false)
                        ])
        ]
        
        return qustions
    }
    
}

