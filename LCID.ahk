#Requires AutoHotkey v2.0
LCID := Map(
    "0036", "Afrikaans",  ; af
    "0436", "Afrikaans (South Africa)",  ; af-ZA
    "001C", "Albanian",  ; sq
    "041C", "Albanian (Albania)",  ; sq-AL
    "0484", "Alsatian (France)",  ; gsw-FR
    "005E", "Amharic",  ; am
    "045E", "Amharic (Ethiopia)",  ; am-ET
    "0001", "Arabic",  ; ar
    "1401", "Arabic (Algeria)",  ; ar-DZ
    "3C01", "Arabic (Bahrain)",  ; ar-BH
    "0C01", "Arabic (Egypt)",  ; ar-EG
    "0801", "Arabic (Iraq)",  ; ar-IQ
    "2C01", "Arabic (Jordan)",  ; ar-JO
    "3401", "Arabic (Kuwait)",  ; ar-KW
    "3001", "Arabic (Lebanon)",  ; ar-LB
    "1001", "Arabic (Libya)",  ; ar-LY
    "1801", "Arabic (Morocco)",  ; ar-MA
    "2001", "Arabic (Oman)",  ; ar-OM
    "4001", "Arabic (Qatar)",  ; ar-QA
    "0401", "Arabic (Saudi Arabia)",  ; ar-SA
    "2801", "Arabic (Syria)",  ; ar-SY
    "1C01", "Arabic (Tunisia)",  ; ar-TN
    "3801", "Arabic (United Arab Emirates)",  ; ar-AE
    "2401", "Arabic (Yemen)",  ; ar-YE
    "002B", "Armenian",  ; hy
    "042B", "Armenian (Armenia)",  ; hy-AM
    "004D", "Assamese",  ; as
    "044D", "Assamese (India)",  ; as-IN
    "002C", "Azerbaijani",  ; az
    "742C", "Azerbaijani (Cyrillic)",  ; az-Cyrl
    "082C", "Azerbaijani (Cyrillic, Azerbaijan)",  ; az-Cyrl-AZ
    "782C", "Azerbaijani (Latin)",  ; az-Latn
    "042C", "Azerbaijani (Latin, Azerbaijan)",  ; az-Latn-AZ
    "0045", "Bangla",  ; bn
    "0845", "Bangla (Bangladesh)",  ; bn-BD
    "006D", "Bashkir",  ; ba
    "046D", "Bashkir (Russia)",  ; ba-RU
    "002D", "Basque",  ; eu
    "042D", "Basque (Basque)",  ; eu-ES
    "0023", "Belarusian",  ; be
    "0423", "Belarusian (Belarus)",  ; be-BY
    "0445", "Bengali (India)",  ; bn-IN
    "781A", "Bosnian",  ; bs
    "641A", "Bosnian (Cyrillic)",  ; bs-Cyrl
    "201A", "Bosnian (Cyrillic, Bosnia and Herzegovina)",  ; bs-Cyrl-BA
    "681A", "Bosnian (Latin)",  ; bs-Latn
    "141A", "Bosnian (Latin, Bosnia & Herzegovina)",  ; bs-Latn-BA
    "007E", "Breton",  ; br
    "047E", "Breton (France)",  ; br-FR
    "0002", "Bulgarian",  ; bg
    "0402", "Bulgarian (Bulgaria)",  ; bg-BG
    "0055", "Burmese",  ; my
    "0455", "Burmese (Myanmar)",  ; my-MM
    "0003", "Catalan",  ; ca
    "0403", "Catalan (Catalan)",  ; ca-ES
    "005F", "Central Atlas Tamazight",  ; tzm
    "045F", "Central Atlas Tamazight (Arabic, Morocco)",  ; tzm-Arab-MA
    "7C5F", "Central Atlas Tamazight (Latin)",  ; tzm-Latn
    "085F", "Central Atlas Tamazight (Latin, Algeria)",  ; tzm-Latn-DZ
    "785F", "Central Atlas Tamazight (Tifinagh)",  ; tzm-Tfng
    "105F", "Central Atlas Tamazight (Tifinagh, Morocco)",  ; tzm-Tfng-MA
    "0092", "Central Kurdish",  ; ku
    "7C92", "Central Kurdish",  ; ku-Arab
    "0492", "Central Kurdish (Iraq)",  ; ku-Arab-IQ
    "005C", "Cherokee",  ; chr
    "7C5C", "Cherokee",  ; chr-Cher
    "045C", "Cherokee (Cherokee, United States)",  ; chr-Cher-US
    "7804", "Chinese",  ; zh
    "0004", "Chinese (Simplified)",  ; zh-Hans
    "0804", "Chinese (Simplified, China)",  ; zh-CN
    "1004", "Chinese (Simplified, Singapore)",  ; zh-SG
    "7C04", "Chinese (Traditional)",  ; zh-Hant
    "0C04", "Chinese (Traditional, Hong Kong SAR)",  ; zh-HK
    "1404", "Chinese (Traditional, Macao SAR)",  ; zh-MO
    "0404", "Chinese (Traditional, Taiwan)",  ; zh-TW
    "0083", "Corsican",  ; co
    "0483", "Corsican (France)",  ; co-FR
    "001A", "Croatian",  ; hr
    "101A", "Croatian (Bosnia & Herzegovina)",  ; hr-BA
    "041A", "Croatian (Croatia)",  ; hr-HR
    "0005", "Czech",  ; cs
    "0405", "Czech (Czechia)",  ; cs-CZ
    "0006", "Danish",  ; da
    "0406", "Danish (Denmark)",  ; da-DK
    "0065", "Divehi",  ; dv
    "0465", "Divehi (Maldives)",  ; dv-MV
    "0013", "Dutch",  ; nl
    "0813", "Dutch (Belgium)",  ; nl-BE
    "0413", "Dutch (Netherlands)",  ; nl-NL
    "0C51", "Dzongkha (Bhutan)",  ; dz-BT
    "0066", "Edo",  ; bin
    "0466", "Edo (Nigeria)",  ; bin-NG
    "0009", "English",  ; en
    "0C09", "English (Australia)",  ; en-AU
    "2809", "English (Belize)",  ; en-BZ
    "1009", "English (Canada)",  ; en-CA
    "2409", "English (Caribbean)",  ; en-029
    "3C09", "English (Hong Kong SAR)",  ; en-HK
    "4009", "English (India)",  ; en-IN
    "3809", "English (Indonesia)",  ; en-ID
    "1809", "English (Ireland)",  ; en-IE
    "2009", "English (Jamaica)",  ; en-JM
    "4409", "English (Malaysia)",  ; en-MY
    "1409", "English (New Zealand)",  ; en-NZ
    "3409", "English (Philippines)",  ; en-PH
    "4809", "English (Singapore)",  ; en-SG
    "1C09", "English (South Africa)",  ; en-ZA
    "2C09", "English (Trinidad & Tobago)",  ; en-TT
    "4C09", "English (United Arab Emirates)",  ; en-AE
    "0809", "English (United Kingdom)",  ; en-GB
    "0409", "English (United States)",  ; en-US
    "3009", "English (Zimbabwe)",  ; en-ZW
    "0025", "Estonian",  ; et
    "0425", "Estonian (Estonia)",  ; et-EE
    "0038", "Faroese",  ; fo
    "0438", "Faroese (Faroe Islands)",  ; fo-FO
    "0064", "Filipino",  ; fil
    "0464", "Filipino (Philippines)",  ; fil-PH
    "000B", "Finnish",  ; fi
    "040B", "Finnish (Finland)",  ; fi-FI
    "000C", "French",  ; fr
    "080C", "French (Belgium)",  ; fr-BE
    "2C0C", "French (Cameroon)",  ; fr-CM
    "0C0C", "French (Canada)",  ; fr-CA
    "1C0C", "French (Caribbean)",  ; fr-029
    "300C", "French (Côte d’Ivoire)",  ; fr-CI
    "040C", "French (France)",  ; fr-FR
    "3C0C", "French (Haiti)",  ; fr-HT
    "140C", "French (Luxembourg)",  ; fr-LU
    "340C", "French (Mali)",  ; fr-ML
    "180C", "French (Monaco)",  ; fr-MC
    "380C", "French (Morocco)",  ; fr-MA
    "200C", "French (Réunion)",  ; fr-RE
    "280C", "French (Senegal)",  ; fr-SN
    "100C", "French (Switzerland)",  ; fr-CH
    "240C", "French Congo (DRC)",  ; fr-CD
    "0067", "Fulah",  ; ff
    "7C67", "Fulah (Latin)",  ; ff-Latn
    "0467", "Fulah (Latin, Nigeria)",  ; ff-Latn-NG
    "0867", "Fulah (Latin, Senegal)",  ; ff-Latn-SN
    "0056", "Galician",  ; gl
    "0456", "Galician (Galician)",  ; gl-ES
    "0037", "Georgian",  ; ka
    "0437", "Georgian (Georgia)",  ; ka-GE
    "0007", "German",  ; de
    "0C07", "German (Austria)",  ; de-AT
    "0407", "German (Germany)",  ; de-DE
    "1407", "German (Liechtenstein)",  ; de-LI
    "1007", "German (Luxembourg)",  ; de-LU
    "0807", "German (Switzerland)",  ; de-CH
    "0008", "Greek",  ; el
    "0408", "Greek (Greece)",  ; el-GR
    "0074", "Guarani",  ; gn
    "0474", "Guarani (Paraguay)",  ; gn-PY
    "0047", "Gujarati",  ; gu
    "0447", "Gujarati (India)",  ; gu-IN
    "0068", "Hausa",  ; ha
    "7C68", "Hausa (Latin)",  ; ha-Latn
    "0468", "Hausa (Latin, Nigeria)",  ; ha-Latn-NG
    "0075", "Hawaiian",  ; haw
    "0475", "Hawaiian (United States)",  ; haw-US
    "000D", "Hebrew",  ; he
    "040D", "Hebrew (Israel)",  ; he-IL
    "0039", "Hindi",  ; hi
    "0439", "Hindi (India)",  ; hi-IN
    "000E", "Hungarian",  ; hu
    "040E", "Hungarian (Hungary)",  ; hu-HU
    "0069", "Ibibio",  ; ibb
    "0469", "Ibibio (Nigeria)",  ; ibb-NG
    "000F", "Icelandic",  ; is
    "040F", "Icelandic (Iceland)",  ; is-IS
    "0070", "Igbo",  ; ig
    "0470", "Igbo (Nigeria)",  ; ig-NG
    "0021", "Indonesian",  ; id
    "0421", "Indonesian (Indonesia)",  ; id-ID
    "005D", "Inuktitut",  ; iu
    "7C5D", "Inuktitut (Latin)",  ; iu-Latn
    "085D", "Inuktitut (Latin, Canada)",  ; iu-Latn-CA
    "785D", "Inuktitut (Syllabics)",  ; iu-Cans
    "045D", "Inuktitut (Syllabics, Canada)",  ; iu-Cans-CA
    "003C", "Irish",  ; ga
    "083C", "Irish (Ireland)",  ; ga-IE
    "0034", "isiXhosa",  ; xh
    "0434", "isiXhosa (South Africa)",  ; xh-ZA
    "0035", "isiZulu",  ; zu
    "0435", "isiZulu (South Africa)",  ; zu-ZA
    "0010", "Italian",  ; it
    "0410", "Italian (Italy)",  ; it-IT
    "0810", "Italian (Switzerland)",  ; it-CH
    "0011", "Japanese",  ; ja
    "0411", "Japanese (Japan)",  ; ja-JP
    "006F", "Kalaallisut",  ; kl
    "046F", "Kalaallisut (Greenland)",  ; kl-GL
    "004B", "Kannada",  ; kn
    "044B", "Kannada (India)",  ; kn-IN
    "0071", "Kanuri",  ; kr
    "0471", "Kanuri (Latin, Nigeria)",  ; kr-Latn-NG
    "0060", "Kashmiri",  ; ks
    "0460", "Kashmiri (Arabic)",  ; ks-Arab
    "1000", "Kashmiri (Arabic)",  ; ks-Arab-IN
    "0860", "Kashmiri (Devanagari)",  ; ks-Deva-IN
    "003F", "Kazakh",  ; kk
    "043F", "Kazakh (Kazakhstan)",  ; kk-KZ
    "0053", "Khmer",  ; km
    "0453", "Khmer (Cambodia)",  ; km-KH
    "0087", "Kinyarwanda",  ; rw
    "0487", "Kinyarwanda (Rwanda)",  ; rw-RW
    "0041", "Kiswahili",  ; sw
    "0441", "Kiswahili (Kenya)",  ; sw-KE
    "0057", "Konkani",  ; kok
    "0457", "Konkani (India)",  ; kok-IN
    "0012", "Korean",  ; ko
    "0412", "Korean (Korea)",  ; ko-KR
    "0040", "Kyrgyz",  ; ky
    "0440", "Kyrgyz (Kyrgyzstan)",  ; ky-KG
    "0086", "Kʼicheʼ",  ; quc
    "7C86", "Kʼicheʼ (Latin)",  ; quc-Latn
    "0486", "Kʼicheʼ (Latin, Guatemala)",  ; quc-Latn-GT
    "0054", "Lao",  ; lo
    "0454", "Lao (Laos)",  ; lo-LA
    "0076", "Latin",  ; la
    "0476", "Latin (Vatican City)",  ; la-VA
    "0026", "Latvian",  ; lv
    "0426", "Latvian (Latvia)",  ; lv-LV
    "0027", "Lithuanian",  ; lt
    "0427", "Lithuanian (Lithuania)",  ; lt-LT
    "7C2E", "Lower Sorbian",  ; dsb
    "082E", "Lower Sorbian (Germany)",  ; dsb-DE
    "006E", "Luxembourgish",  ; lb
    "046E", "Luxembourgish (Luxembourg)",  ; lb-LU
    "002F", "Macedonian",  ; mk
    "042F", "Macedonian (North Macedonia)",  ; mk-MK
    "003E", "Malay",  ; ms
    "083E", "Malay (Brunei)",  ; ms-BN
    "043E", "Malay (Malaysia)",  ; ms-MY
    "004C", "Malayalam",  ; ml
    "044C", "Malayalam (India)",  ; ml-IN
    "003A", "Maltese",  ; mt
    "043A", "Maltese (Malta)",  ; mt-MT
    "0058", "Manipuri",  ; mni
    "0458", "Manipuri (Bangla, India)",  ; mni-IN
    "0081", "Maori",  ; mi
    "0481", "Maori (New Zealand)",  ; mi-NZ
    "007A", "Mapuche",  ; arn
    "047A", "Mapuche (Chile)",  ; arn-CL
    "004E", "Marathi",  ; mr
    "044E", "Marathi (India)",  ; mr-IN
    "007C", "Mohawk",  ; moh
    "047C", "Mohawk (Canada)",  ; moh-CA
    "0050", "Mongolian",  ; mn
    "7850", "Mongolian",  ; mn-Cyrl
    "0450", "Mongolian (Mongolia)",  ; mn-MN
    "7C50", "Mongolian (Traditional Mongolian)",  ; mn-Mong
    "0850", "Mongolian (Traditional Mongolian, China)",  ; mn-Mong-CN
    "0C50", "Mongolian (Traditional Mongolian, Mongolia)",  ; mn-Mong-MN
    "0061", "Nepali",  ; ne
    "0861", "Nepali (India)",  ; ne-IN
    "0461", "Nepali (Nepal)",  ; ne-NP
    "003B", "Northern Sami",  ; se
    "0014", "Norwegian",  ; no
    "7C14", "Norwegian Bokmål",  ; nb
    "0414", "Norwegian Bokmål (Norway)",  ; nb-NO
    "7814", "Norwegian Nynorsk",  ; nn
    "0814", "Norwegian Nynorsk (Norway)",  ; nn-NO
    "0082", "Occitan",  ; oc
    "0482", "Occitan (France)",  ; oc-FR
    "0048", "Odia",  ; or
    "0448", "Odia (India)",  ; or-IN
    "0072", "Oromo",  ; om
    "0472", "Oromo (Ethiopia)",  ; om-ET
    "0079", "Papiamento",  ; pap
    "0479", "Papiamento (Caribbean)",  ; pap-029
    "0063", "Pashto",  ; ps
    "0463", "Pashto (Afghanistan)",  ; ps-AF
    "0029", "Persian",  ; fa
    "008C", "Persian",  ; fa
    "048C", "Persian (Afghanistan)",  ; fa-AF
    "0429", "Persian (Iran)",  ; fa-IR
    "0015", "Polish",  ; pl
    "0415", "Polish (Poland)",  ; pl-PL
    "0016", "Portuguese",  ; pt
    "0416", "Portuguese (Brazil)",  ; pt-BR
    "0816", "Portuguese (Portugal)",  ; pt-PT
    "05FE", "Pseudo (Pseudo Asia)",  ; qps-ploca
    "09FF", "Pseudo (Pseudo Mirrored)",  ; qps-plocm
    "0901", "Pseudo (Pseudo Selfhost)",  ; qps-Latn-x-sh
    "0501", "Pseudo (Pseudo)",  ; qps-ploc
    "0046", "Punjabi",  ; pa
    "7C46", "Punjabi",  ; pa-Arab
    "0446", "Punjabi (India)",  ; pa-IN
    "0846", "Punjabi (Pakistan)",  ; pa-Arab-PK
    "006B", "Quechua",  ; quz
    "046B", "Quechua (Bolivia)",  ; quz-BO
    "086B", "Quechua (Ecuador)",  ; quz-EC
    "0C6B", "Quechua (Peru)",  ; quz-PE
    "0018", "Romanian",  ; ro
    "0818", "Romanian (Moldova)",  ; ro-MD
    "0418", "Romanian (Romania)",  ; ro-RO
    "0017", "Romansh",  ; rm
    "0417", "Romansh (Switzerland)",  ; rm-CH
    "0019", "Russian",  ; ru
    "0819", "Russian (Moldova)",  ; ru-MD
    "0419", "Russian (Russia)",  ; ru-RU
    "0085", "Sakha",  ; sah
    "0485", "Sakha (Russia)",  ; sah-RU
    "703B", "Sami (Inari)",  ; smn
    "7C3B", "Sami (Lule)",  ; smj
    "743B", "Sami (Skolt)",  ; sms
    "783B", "Sami (Southern)",  ; sma
    "243B", "Sami, Inari (Finland)",  ; smn-FI
    "103B", "Sami, Lule (Norway)",  ; smj-NO
    "143B", "Sami, Lule (Sweden)",  ; smj-SE
    "0C3B", "Sami, Northern (Finland)",  ; se-FI
    "043B", "Sami, Northern (Norway)",  ; se-NO
    "083B", "Sami, Northern (Sweden)",  ; se-SE
    "203B", "Sami, Skolt (Finland)",  ; sms-FI
    "183B", "Sami, Southern (Norway)",  ; sma-NO
    "1C3B", "Sami, Southern (Sweden)",  ; sma-SE
    "004F", "Sanskrit",  ; sa
    "044F", "Sanskrit (India)",  ; sa-IN
    "0091", "Scottish Gaelic",  ; gd
    "0491", "Scottish Gaelic (United Kingdom)",  ; gd-GB
    "7C1A", "Serbian",  ; sr
    "6C1A", "Serbian (Cyrillic)",  ; sr-Cyrl
    "1C1A", "Serbian (Cyrillic, Bosnia and Herzegovina)",  ; sr-Cyrl-BA
    "301A", "Serbian (Cyrillic, Montenegro)",  ; sr-Cyrl-ME
    "0C1A", "Serbian (Cyrillic, Serbia and Montenegro (Former))",  ; sr-Cyrl-CS
    "281A", "Serbian (Cyrillic, Serbia)",  ; sr-Cyrl-RS
    "701A", "Serbian (Latin)",  ; sr-Latn
    "181A", "Serbian (Latin, Bosnia & Herzegovina)",  ; sr-Latn-BA
    "2C1A", "Serbian (Latin, Montenegro)",  ; sr-Latn-ME
    "081A", "Serbian (Latin, Serbia and Montenegro (Former))",  ; sr-Latn-CS
    "241A", "Serbian (Latin, Serbia)",  ; sr-Latn-RS
    "0030", "Sesotho",  ; st
    "0430", "Sesotho (South Africa)",  ; st-ZA
    "006C", "Sesotho sa Leboa",  ; nso
    "046C", "Sesotho sa Leboa (South Africa)",  ; nso-ZA
    "0032", "Setswana",  ; tn
    "0832", "Setswana (Botswana)",  ; tn-BW
    "0432", "Setswana (South Africa)",  ; tn-ZA
    "0059", "Sindhi",  ; sd
    "7C59", "Sindhi",  ; sd-Arab
    "0459", "Sindhi (Devanagari, India)",  ; sd-Deva-IN
    "0859", "Sindhi (Pakistan)",  ; sd-Arab-PK
    "005B", "Sinhala",  ; si
    "045B", "Sinhala (Sri Lanka)",  ; si-LK
    "001B", "Slovak",  ; sk
    "041B", "Slovak (Slovakia)",  ; sk-SK
    "0024", "Slovenian",  ; sl
    "0424", "Slovenian (Slovenia)",  ; sl-SI
    "0077", "Somali",  ; so
    "0477", "Somali (Somalia)",  ; so-SO
    "000A", "Spanish",  ; es
    "2C0A", "Spanish (Argentina)",  ; es-AR
    "400A", "Spanish (Bolivia)",  ; es-BO
    "340A", "Spanish (Chile)",  ; es-CL
    "240A", "Spanish (Colombia)",  ; es-CO
    "140A", "Spanish (Costa Rica)",  ; es-CR
    "5C0A", "Spanish (Cuba)",  ; es-CU
    "1C0A", "Spanish (Dominican Republic)",  ; es-DO
    "300A", "Spanish (Ecuador)",  ; es-EC
    "440A", "Spanish (El Salvador)",  ; es-SV
    "100A", "Spanish (Guatemala)",  ; es-GT
    "480A", "Spanish (Honduras)",  ; es-HN
    "580A", "Spanish (Latin America)",  ; es-419
    "080A", "Spanish (Mexico)",  ; es-MX
    "4C0A", "Spanish (Nicaragua)",  ; es-NI
    "180A", "Spanish (Panama)",  ; es-PA
    "3C0A", "Spanish (Paraguay)",  ; es-PY
    "280A", "Spanish (Peru)",  ; es-PE
    "500A", "Spanish (Puerto Rico)",  ; es-PR
    "0C0A", "Spanish (Spain, International Sort)",  ; es-ES
    "040A", "Spanish (Spain, Traditional Sort)",  ; es-ES_tradnl
    "540A", "Spanish (United States)",  ; es-US
    "380A", "Spanish (Uruguay)",  ; es-UY
    "200A", "Spanish (Venezuela)",  ; es-VE
    "001D", "Swedish",  ; sv
    "081D", "Swedish (Finland)",  ; sv-FI
    "041D", "Swedish (Sweden)",  ; sv-SE
    "0084", "Swiss German",  ; gsw
    "005A", "Syriac",  ; syr
    "045A", "Syriac (Syria)",  ; syr-SY
    "0028", "Tajik",  ; tg
    "7C28", "Tajik (Cyrillic)",  ; tg-Cyrl
    "0428", "Tajik (Cyrillic, Tajikistan)",  ; tg-Cyrl-TJ
    "0049", "Tamil",  ; ta
    "0449", "Tamil (India)",  ; ta-IN
    "0849", "Tamil (Sri Lanka)",  ; ta-LK
    "0044", "Tatar",  ; tt
    "0444", "Tatar (Russia)",  ; tt-RU
    "004A", "Telugu",  ; te
    "044A", "Telugu (India)",  ; te-IN
    "001E", "Thai",  ; th
    "041E", "Thai (Thailand)",  ; th-TH
    "0051", "Tibetan",  ; bo
    "0451", "Tibetan (China)",  ; bo-CN
    "0073", "Tigrinya",  ; ti
    "0873", "Tigrinya (Eritrea)",  ; ti-ER
    "0473", "Tigrinya (Ethiopia)",  ; ti-ET
    "001F", "Turkish",  ; tr
    "041F", "Turkish (Turkey)",  ; tr-TR
    "0042", "Turkmen",  ; tk
    "0442", "Turkmen (Turkmenistan)",  ; tk-TM
    "0022", "Ukrainian",  ; uk
    "0422", "Ukrainian (Ukraine)",  ; uk-UA
    "002E", "Upper Sorbian",  ; hsb
    "042E", "Upper Sorbian (Germany)",  ; hsb-DE
    "0020", "Urdu",  ; ur
    "0820", "Urdu (India)",  ; ur-IN
    "0420", "Urdu (Pakistan)",  ; ur-PK
    "0080", "Uyghur",  ; ug
    "0480", "Uyghur (China)",  ; ug-CN
    "0043", "Uzbek",  ; uz
    "7843", "Uzbek (Cyrillic)",  ; uz-Cyrl
    "0843", "Uzbek (Cyrillic, Uzbekistan)",  ; uz-Cyrl-UZ
    "7C43", "Uzbek (Latin)",  ; uz-Latn
    "0443", "Uzbek (Latin, Uzbekistan)",  ; uz-Latn-UZ
    "0803", "Valencian (Spain)",  ; ca-ES-valencia
    "0033", "Venda",  ; ve
    "0433", "Venda (South Africa)",  ; ve-ZA
    "002A", "Vietnamese",  ; vi
    "042A", "Vietnamese (Vietnam)",  ; vi-VN
    "0052", "Welsh",  ; cy
    "0452", "Welsh (United Kingdom)",  ; cy-GB
    "0062", "Western Frisian",  ; fy
    "0462", "Western Frisian (Netherlands)",  ; fy-NL
    "0088", "Wolof",  ; wo
    "0488", "Wolof (Senegal)",  ; wo-SN
    "0031", "Xitsonga",  ; ts
    "0431", "Xitsonga (South Africa)",  ; ts-ZA
    "0078", "Yi",  ; ii
    "0478", "Yi (China)",  ; ii-CN
    "003D", "Yiddish",  ; yi
    "043D", "Yiddish (World)",  ; yi-001
    "006A", "Yoruba",  ; yo
    "046A", "Yoruba (Nigeria)"  ; yo-NG
)
