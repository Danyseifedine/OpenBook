   <!-- Site footer -->
   <footer class="site-footer">
       <div class="container">
           <div class="row">
               <div class="col-sm-12 col-md-6">
                   <h6>{{ __('messages.about') }}</h6>
                   <p class="text-justify p-2">{{ __('messages.about_description') }}
                       <i>{{ __('messages.about_emphasis') }}</i> {{ __('messages.about_additional') }}
                   </p>
               </div>

           </div>
           <br>
           <br>
           <hr>
       </div>
       <div class="container pt-5">
           <div class="row">
               <div class="col-md-8 col-sm-6 col-xs-12">
                   <p class="copyright-text">
                       {{ __('messages.copyright') }} &copy; {{ __('messages.current_year') }}
                       {{ __('messages.all_rights_reserved') }}
                       <a href="#">OpenBook</a>.
                   </p>
               </div>

               <div class="col-md-4 col-sm-6 col-xs-12">
                   <ul class="social-icons">
                       <li><a class="facebook" href="#"><i class="ri-facebook-fill"
                                   style="font-size: 30px"></i></a>
                       </li>
                       <li><a class="twitter" href="#"><i class="ri-github-fill" style="font-size: 30px"></i></a>
                       </li>
                       <li><a class="dribbble" href="#"><i class="ri-instagram-line"
                                   style="font-size: 30px"></i></a>
                       </li>
                       <li><a class="linkedin" href="#"><i class="ri-linkedin-box-fill"
                                   style="font-size: 30px"></i></a>
                       </li>
                   </ul>
               </div>
           </div>
       </div>
   </footer>
   <!--=============== MAIN JS ===============-->

   <script src="{{ asset('js/DropDownNavBar/navbar.js') }}"></script>

   <script src="https://unpkg.com/@themesberg/flowbite@1.2.0/dist/flowbite.bundle.js"></script>

   @guest
       <script src="{{ asset('js/home/validation.js') }}"></script>
   @endguest

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
