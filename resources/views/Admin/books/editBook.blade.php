@extends('admin.partiels.sidebar')


@section('section')
    <section class="home-section">
        <!-- component -->
        <div class="overflow-x-auto">

            <div class="min-w-screen min-h-screen bg-gray-100 flex justify-center bg-gray-100 font-sans overflow-hidden">
                <div class="w-full lg:w-5/6">
                    <div class="flex justify-between">
                        <div class="text">Books : {{ $book->name }}</div>
                    </div>
                    <form action="{{ route('updateBook', $book->id) }}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('post')

                        <div class="grid grid-cols-2 md:grid-cols-4 gap-2 info-card-add-book mt-12 p-5">
                            <div class="mb-3">
                                <label for="title" class="form-label">Book Title</label>
                                <input type="text" placeholder="Book name..." value="{{ $book->name }}"
                                    class="_input text-black form-select form-control block w-full px-4 py-3 pr-8 leading-tight border border-gray-300 rounded-lg appearance-none focus:outline-none focus:ring focus:border-blue-500"
                                    id="title" name="book_title" required>
                            </div>

                            <div class="mb-3">
                                <label for="author" class="form-label">Author</label>
                                <input type="text" value="{{ $book->author }}" placeholder="Author name..."
                                    class="_input text-black form-select form-control block w-full px-4 py-3 pr-8 leading-tight border border-gray-300 rounded-lg appearance-none focus:outline-none focus:ring focus:border-blue-500"
                                    id="author" name="book_author" required>
                            </div>
                            <div class="mb-3">
                                <label for="published_date" class="form-label">Published Date</label>
                                <input type="date" value="{{ $book->publication_date }}"
                                    class="_input text-black form-select form-control block w-full px-4 py-3 pr-8 leading-tight border border-gray-300 rounded-lg appearance-none focus:outline-none focus:ring focus:border-blue-500"
                                    id="published_date" name="publication_date" required>
                            </div>

                            <div class="mb-3">
                                <label for="category" class="form-label">Category</label>
                                <select
                                    class="_input text-black form-select form-control block w-full px-4 py-3 pr-8 leading-tight border border-gray-300 rounded-lg appearance-none focus:outline-none focus:ring focus:border-blue-500"
                                    id="category" name="book_category" required>
                                    <option value="{{ $book->category }}" selected>{{ $book->category }}
                                    </option>
                                    <option value="Romance">Romance</option>
                                    <option value="Mystery">Mystery</option>
                                    <option value="Science-Fiction">Science Fiction</option>
                                    <option value="Fantasy">Fantasy</option>
                                    <option value="Biography">Biography</option>
                                    <option value="Self-Help">Self-Help</option>
                                    <option value="History">History</option>
                                    <option value="Science">Science</option>
                                    <option value="Picture-Book">Picture Book</option>
                                    <option value="Chapter-Book">Chapter Book</option>
                                    <option value="Classic-poetry">Classic</option>
                                    <option value="Poetry">Poetry</option>
                                    <option value="Arabic-Poetry">Arabic Poetry</option>
                                    <option value="Love-Poetry">Love Poetry</option>
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="category" class="form-label">التصنيف</label>
                                <select
                                    class="_input text-black form-select form-control block w-full px-4 py-3 pr-8 leading-tight border border-gray-300 rounded-lg appearance-none focus:outline-none focus:ring focus:border-blue-500"
                                    id="category" name="book_category_arabic" required>
                                    <option value="{{ $book->category_arabic }}" selected>{{ $book->category_arabic }}
                                    </option>
                                    <option value="رومانسية">رومانسية</option>
                                    <option value="غموض">غموض</option>
                                    <option value="خيال علمي">خيال علمي</option>
                                    <option value="فانتازيا">فانتازيا</option>
                                    <option value="سير ذاتية">سير ذاتية</option>
                                    <option value="تطوير الذات">تطوير الذات</option>
                                    <option value="تاريخ">تاريخ</option>
                                    <option value="علوم">علوم</option>
                                    <option value="كتاب-صور">كتاب صور</option>
                                    <option value="كتاب-فصول">كتاب فصول</option>
                                    <option value="كلاسيكية">كلاسيكية</option>
                                    <option value="شعر">شعر</option>
                                    <option value="شعر-عربي">شعر عربي</option>
                                    <option value="شعر-الحب">شعر الحب</option>
                                </select>
                            </div>


                            <div class="mb-3">
                                <label for="language_book" class="form-label">language</label>
                                <select name="book_language"
                                    class="_input text-black form-select form-control block w-full px-4 py-3 pr-8 leading-tight border border-gray-300 rounded-lg appearance-none focus:outline-none focus:ring focus:border-blue-500">
                                    <option value="{{ $book->language }}" selected>{{ $book->language }}
                                    </option>
                                    <option value="English">English</option>
                                    <option value="Spanish">Spanish</option>
                                    <option value="French">French</option>
                                    <option value="German">German</option>
                                    <option value="Italian">Italian</option>
                                    <option value="Portuguese">Portuguese</option>
                                    <option value="Russian">Russian</option>
                                    <option value="Japanese">Japanese</option>
                                    <option value="Chinese">Chinese</option>
                                    <option value="Hindi">Hindi</option>
                                    <option value="Arabic">Arabic</option>
                                    <option value="Afrikaans">Afrikaans</option>
                                    <option value="Albanian">Albanian</option>
                                    <option value="Amharic">Amharic</option>
                                    <option value="Armenian">Armenian</option>
                                    <option value="Azerbaijani">Azerbaijani</option>
                                    <option value="Basque">Basque</option>
                                    <option value="Belarusian">Belarusian</option>
                                    <option value="Bengali">Bengali</option>
                                    <option value="Bosnian">Bosnian</option>
                                    <option value="Bulgarian">Bulgarian</option>
                                    <option value="Catalan">Catalan</option>
                                    <option value="Cebuano">Cebuano</option>
                                    <option value="Chichewa">Chichewa</option>
                                    <option value="Corsican">Corsican</option>
                                    <option value="Croatian">Croatian</option>
                                    <option value="Czech">Czech</option>
                                    <option value="Danish">Danish</option>
                                    <option value="Dutch">Dutch</option>
                                    <option value="Esperanto">Esperanto</option>
                                    <option value="Estonian">Estonian</option>
                                    <option value="Filipino">Filipino</option>
                                    <option value="Finnish">Finnish</option>
                                    <option value="Frisian">Frisian</option>
                                    <option value="Galician">Galician</option>
                                    <option value="Georgian">Georgian</option>
                                    <option value="Greek">Greek</option>
                                    <option value="Gujarati">Gujarati</option>
                                    <option value="Haitian Creole">Haitian Creole</option>
                                    <option value="Hausa">Hausa</option>
                                    <option value="Hawaiian">Hawaiian</option>
                                    <option value="Hebrew">Hebrew</option>
                                    <option value="Hmong">Hmong</option>
                                    <option value="Hungarian">Hungarian</option>
                                    <option value="Icelandic">Icelandic</option>
                                    <option value="Igbo">Igbo</option>
                                    <option value="Indonesian">Indonesian</option>
                                    <option value="Irish">Irish</option>
                                    <option value="Italian">Italian</option>
                                    <option value="Japanese">Japanese</option>
                                    <option value="Javanese">Javanese</option>
                                    <option value="Kannada">Kannada</option>
                                    <option value="Kazakh">Kazakh</option>
                                    <option value="Khmer">Khmer</option>
                                    <option value="Korean">Korean</option>
                                    <option value="Kyrgyz">Kyrgyz</option>
                                    <option value="Lao">Lao</option>
                                    <option value="Latin">Latin</option>
                                    <option value="Latvian">Latvian</option>
                                    <option value="Lithuanian">Lithuanian</option>
                                    <option value="Luxembourgish">Luxembourgish</option>
                                    <option value="Macedonian">Macedonian</option>
                                    <option value="Malagasy">Malagasy</option>
                                    <option value="Malay">Malay</option>
                                    <option value="Malayalam">Malayalam</option>
                                    <option value="Maltese">Maltese</option>
                                    <option value="Maori">Maori</option>
                                    <option value="Marathi">Marathi</option>
                                    <option value="Mongolian">Mongolian</option>
                                    <option value="Nepali">Nepali</option>
                                    <option value="Norwegian">Norwegian</option>
                                    <option value="Pashto">Pashto</option>
                                    <option value="Persian">Persian</option>
                                    <option value="Polish">Polish</option>
                                    <option value="Portuguese">Portuguese</option>
                                    <option value="Punjabi">Punjabi</option>
                                    <option value="Romanian">Romanian</option>
                                    <option value="Russian">Russian</option>
                                    <option value="Samoan">Samoan</option>
                                    <option value="Scots Gaelic">Scots Gaelic</option>
                                    <option value="Serbian">Serbian</option>
                                    <option value="Sesotho">Sesotho</option>
                                    <option value="Shona">Shona</option>
                                    <option value="Sindhi">Sindhi</option>
                                    <option value="Slovak">Slovak</option>
                                    <option value="Slovenian">Slovenian</option>
                                    <option value="Somali">Somali</option>
                                    <option value="Spanish">Spanish</option>
                                    <option value="Sundanese">Sundanese</option>
                                    <option value="Swahili">Swahili</option>
                                    <option value="Swedish">Swedish</option>
                                    <option value="Tajik">Tajik</option>
                                    <option value="Tamil">Tamil</option>
                                    <option value="Tatar">Tatar</option>
                                    <option value="Telugu">Telugu</option>
                                    <option value="Thai">Thai</option>
                                    <option value="Turkish">Turkish</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="language_book" class="form-label">اللغة</label>
                                <select name="book_language_arabic"
                                    class="_input text-black form-select form-control block w-full px-4 py-3 pr-8 leading-tight border border-gray-300 rounded-lg appearance-none focus:outline-none focus:ring focus:border-blue-500">
                                    <option value="{{ $book->language_arabic }}" selected>{{ $book->language_arabic }}
                                    </option>
                                    <option value="الإنجليزية">الإنجليزية</option>
                                    <option value="الإسبانية">الإسبانية</option>
                                    <option value="الفرنسية">الفرنسية</option>
                                    <option value="الألمانية">الألمانية</option>
                                    <option value="الإيطالية">الإيطالية</option>
                                    <option value="البرتغالية">البرتغالية</option>
                                    <option value="الروسية">الروسية</option>
                                    <option value="اليابانية">اليابانية</option>
                                    <option value="الصينية">الصينية</option>
                                    <option value="الهندية">الهندية</option>
                                    <option value="العربية">العربية</option>
                                    <option value="الأفريقانية">الأفريقانية</option>
                                    <option value="الألبانية">الألبانية</option>
                                    <option value="الأمهرية">الأمهرية</option>
                                    <option value="الأرمنية">الأرمنية</option>
                                    <option value="الأذربيجانية">الأذربيجانية</option>
                                    <option value="الباسكية">الباسكية</option>
                                    <option value="البيلاروسية">البيلاروسية</option>
                                    <option value="البنغالية">البنغالية</option>
                                    <option value="البوسنية">البوسنية</option>
                                    <option value="البلغارية">البلغارية</option>
                                    <option value="الكاتالانية">الكاتالانية</option>
                                    <option value="السيبوانو">السيبوانو</option>
                                    <option value="الشيشوا">الشيشوا</option>
                                    <option value="الكورسيكية">الكورسيكية</option>
                                    <option value="الكرواتية">الكرواتية</option>
                                    <option value="التشيكية">التشيكية</option>
                                    <option value="الدانماركية">الدانماركية</option>
                                    <option value="الهولندية">الهولندية</option>
                                    <option value="الإسبرانتو">الإسبرانتو</option>
                                    <option value="الإستونية">الإستونية</option>
                                    <option value="الفيليبينية">الفيليبينية</option>
                                    <option value="الفنلندية">الفنلندية</option>
                                    <option value="الفريزية">الفريزية</option>
                                    <option value="الجاليكية">الجاليكية</option>
                                    <option value="الجورجية">الجورجية</option>
                                    <option value="اليونانية">اليونانية</option>
                                    <option value="الجوجاراتية">الجوجاراتية</option>
                                    <option value="الهاوسا">الهاوسا</option>
                                    <option value="الهوائية">الهوائية</option>
                                    <option value="العبرية">العبرية</option>
                                    <option value="الهمونغ">الهمونغ</option>
                                    <option value="الهنغارية">الهنغارية</option>
                                    <option value="الأيسلندية">الأيسلندية</option>
                                    <option value="الإيغبو">الإيغبو</option>
                                    <option value="الإندونيسية">الإندونيسية</option>
                                    <option value="الأيرلندية">الأيرلندية</option>
                                    <option value="الإيطالية">الإيطالية</option>
                                    <option value="اليابانية">اليابانية</option>
                                    <option value="الجوافانية">الجوافانية</option>
                                    <option value="الكانادا">الكانادا</option>
                                    <option value="الكازاخستانية">الكازاخستانية</option>
                                    <option value="الخميرية">الخميرية</option>
                                    <option value="الكورية">الكورية</option>
                                    <option value="الكيرغيزية">الكيرغيزية</option>
                                    <option value="اللاوسية">اللاوسية</option>
                                    <option value="اللاتينية">اللاتينية</option>
                                    <option value="اللاتفية">اللاتفية</option>
                                    <option value="الليتوانية">الليتوانية</option>
                                    <option value="اللوكسمبورغية">اللوكسمبورغية</option>
                                    <option value="المقدونية">المقدونية</option>
                                    <option value="الملغاشية">الملغاشية</option>
                                    <option value="المالايالامية">المالايالامية</option>
                                    <option value="المالطية">المالطية</option>
                                    <option value="الماورية">الماورية</option>
                                    <option value="الماراثية">الماراثية</option>
                                    <option value="المنغولية">المنغولية</option>
                                    <option value="النيبالية">النيبالية</option>
                                    <option value="النرويجية">النرويجية</option>
                                    <option value="البشتو">البشتو</option>
                                    <option value="الفارسية">الفارسية</option>
                                    <option value="البولندية">البولندية</option>
                                    <option value="البرتغالية">البرتغالية</option>
                                    <option value="البنجابية">البنجابية</option>
                                    <option value="الرومانية">الرومانية</option>
                                    <option value="الروسية">الروسية</option>
                                    <option value="الساموانية">الساموانية</option>
                                    <option value="الإسكتلندية">الإسكتلندية</option>
                                    <option value="الصربية">الصربية</option>
                                    <option value="السيسوتو">السيسوتو</option>
                                    <option value="الشونا">الشونا</option>
                                    <option value="السندي">السندي</option>
                                    <option value="السلوفاكية">السلوفاكية</option>
                                    <option value="السلوفينية">السلوفينية</option>
                                    <option value="الصومالية">الصومالية</option>
                                    <option value="الإسبانية">الإسبانية</option>
                                    <option value="السوندانية">السوندانية</option>
                                    <option value="السواحيلية">السواحيلية</option>
                                    <option value="السويدية">السويدية</option>
                                    <option value="الطاجيكية">الطاجيكية</option>
                                    <option value="التاميلية">التاميلية</option>
                                    <option value="التاتارية">التاتارية</option>
                                    <option value="التيلجو">التيلجو</option>
                                    <option value="التايلاندية">التايلاندية</option>
                                    <option value="التركية">التركية</option>
                                    <!-- ... continue with the rest of the languages in Arabic translation -->
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="title" class="form-label">Page count</label>
                                <input type="number" placeholder="123..." value="{{ $book->pages }}"
                                    class="_input text-black form-select form-control block w-full px-4 py-3 pr-8 leading-tight border border-gray-300 rounded-lg appearance-none focus:outline-none focus:ring focus:border-blue-500"
                                    id="title" name="book_page" required>
                            </div>

                            <div class="mb-3 col-span-2">
                                <label for="published_date" class="form-label">Description</label>
                                <textarea type="text" rows="10" placeholder="Book description in english"
                                    class="_input text-black form-select form-control block w-full px-4 py-3 pr-8 leading-tight border border-gray-300 rounded-lg appearance-none focus:outline-none focus:ring focus:border-blue-500"
                                    id="published_date" name="book_description" required>{{ $book->description }}</textarea>
                            </div>
                            <div class="mb-3 col-span-2">
                                <label for="published_date" class="form-label">Description arabic</label>
                                <textarea type="text" rows="10" placeholder="Book description in arabic"
                                    class="_input text-black form-select form-control block w-full px-4 py-3 pr-8 leading-tight border border-gray-300 rounded-lg appearance-none focus:outline-none focus:ring focus:border-blue-500"
                                    id="published_date" name="book_description_arabic" required>{{ $book->description_arabic }}</textarea>
                            </div>
                            <div class="mb-3">
                                <label for="author" class="form-label">Rate</label>
                                <select
                                    class="_input text-black form-select form-control block w-full px-4 py-3 pr-8 leading-tight border border-gray-300 rounded-lg appearance-none focus:outline-none focus:ring focus:border-blue-500"
                                    id="category" name="book_rate" required>
                                    <option value="{{ $book->world_rate }}" selected>{{ $book->world_rate }}</option>
                                    <option value="10">1</option>
                                    <option value="15">1.5</option>
                                    <option value="20">2</option>
                                    <option value="25">2.5</option>
                                    <option value="30">3</option>
                                    <option value="35">3.5</option>
                                    <option value="40">4</option>
                                    <option value="45">4.5</option>
                                    <option value="50">5</option>
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="pdfFile" class="form-label">Upload PDF</label>
                                <input type="file" id="pdfFile" name="pdf_file" accept=".pdf">
                            </div>
                            <div class="mb-3">
                                <label for="title" class="form-label">Book cover</label>
                                <input type="file" id="title" name="book_cover">
                            </div>
                            <button type="submit" class="bg-blue-500 p-2 rounded text-white mt-5">Save Book</button>

                        </div>
                        <!-- Add more form fields for other book attributes like book cover, description, category, etc. -->

                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection
