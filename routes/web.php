<?php

use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/', 'AnyController@index');

Auth::routes(['verify'=>true]);

//For Home
Route::get('/home', 'HomeController@index')->name('home')->middleware('verified');
Route::get('/admin', 'HomeController@index')->name('admin');

Route::post('find-person','HomeController@search')->name('find-person');

//payment
Route::post('payment.process','RegisteredUserController@payment')->name('payment.process');
Route::post('stripe.charge','RegisteredUserController@stripeCharge')->name('stripe.charge');


//View Profile
Route::get('/viewProfile', 'RegisteredUserController@viewProfile')->name('viewProfile');
// Route::get('/editProfile', 'RegisteredUserController@editProfile')->name('editProfile');
// Route::post('/updateProfile/{id}', 'RegisteredUserController@updateProfile');


//Edit profile step by step
Route::get('/editHeader', 'RegisteredUserController@editHeader')->name('editHeader');
Route::post('/update_user_header/{id}', 'RegisteredUserController@update_user_header');

Route::get('/editDetails', 'RegisteredUserController@editDetails')->name('editDetails');
Route::post('/update_user_delails/{id}', 'RegisteredUserController@update_user_delails');

Route::get('/editBasics', 'RegisteredUserController@editBasics')->name('editBasics');
Route::post('/update_user_basics/{id}', 'RegisteredUserController@update_user_basics');

Route::get('/editEducation', 'RegisteredUserController@editEducation')->name('editEducation');
Route::post('/update_user_education/{id}', 'RegisteredUserController@update_user_education');

Route::get('/editFamily', 'RegisteredUserController@editFamily')->name('editFamily');
Route::post('/update_user_family/{id}', 'RegisteredUserController@update_user_family');

Route::get('/editUserContact', 'RegisteredUserController@editUserContact')->name('editUserContact');
Route::post('/update_user_contact/{id}', 'RegisteredUserController@update_user_contact');


Route::post('/testimonial/{id}', 'RegisteredUserController@testimonial');

//All Profile
Route::get('/allMaleProfile', 'RegisteredUserController@allMaleProfile')->name('allMaleProfile');
Route::get('/allFemaleProfile', 'RegisteredUserController@allFemaleProfile')->name('allFemaleProfile');

//Details profile view by registered user
Route::get('/detailsProfile/{id}', 'RegisteredUserController@detailsProfile')->name('detailsProfile');

/*  Contact */
Route::resource('contact', 'ContactController');

//Testimonial
Route::get('/testimonial', 'TestimonialController@testimonial');
Route::get('/testimonialDelete/{id}', 'TestimonialController@testimonialDelete');

//Payment
Route::get('/userPayment', 'PaymentController@userPayment');
Route::get('/paymentDelete/{id}', 'PaymentController@paymentDelete');



//For Admin
Route::get('/visitor', 'VisitorController@visitorIndex');

// New Register maintain, For admin panel
Route::get('/registeredUser', 'RegisteredUserController@index');
Route::get('/registeredUserActive/{id}', 'RegisteredUserController@active');
Route::get('/registeredUserDeactive/{id}', 'RegisteredUserController@deactive');
Route::get('/pendingUser', 'RegisteredUserController@pendingUser');
Route::get('/approveUser/{id}', 'RegisteredUserController@approveUser');
Route::get('/registeredUserView/{id}', 'RegisteredUserController@registeredUserView');
Route::get('/pendingUserView/{id}', 'RegisteredUserController@pendingUserView');
Route::get('/registeredUserDelete/{id}', 'RegisteredUserController@registeredUserDelete');
Route::get('/pendingUserDelete/{id}', 'RegisteredUserController@pendingUserDelete');

//Service
Route::get('/service', 'ServiceController@index')->name('service');
Route::get('/serviceAdd', 'ServiceController@serviceAdd');
Route::post('/service.add', 'ServiceController@serviceStore')->name('service.add');

Route::get('/serviceDelete/{id}', 'ServiceController@serviceDelete');
Route::get('/serviceEdit/{id}', 'ServiceController@serviceEdit')->name('serviceEdit');
Route::post('/serviceUpdate/{id}', 'ServiceController@serviceUpdate')->name('serviceUpdate');
Route::get('/serviceView/{id}', 'ServiceController@serviceView')->name('serviceView');

Route::get('/serviceActive/{id}', 'ServiceController@active');
Route::get('/serviceDeactive/{id}', 'ServiceController@deactive');

/* Blog  Resource Route */
Route::resource('blog', 'BlogController');
Route::get('/addBlog', 'BlogController@addBlog');
Route::get('/allBlog', 'BlogController@allBlog');

Route::get('/blogActive/{id}', 'BlogController@active');
Route::get('/blogDeactive/{id}', 'BlogController@deactive');

/* Add User by admin */
Route::get('/adduser_byadmin', 'AddUserByAdminController@adduser_byadmin')->name('adduser_byadmin');
Route::post('/adduser_byadmin.add', 'AddUserByAdminController@adduser_byadmin_store')->name('adduser_byadmin.add');
Route::get('/userroleDelete/{id}', 'AddUserByAdminController@userroleDelete');

//User Role
Route::get('/userrole', 'AddUserByAdminController@userrole')->name('userrole');



