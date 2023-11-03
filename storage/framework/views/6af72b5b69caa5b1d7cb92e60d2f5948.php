<header class="header_section">
    <div class="container">
       <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="<?php echo e(url('/')); ?>"><img width="250" src="images/logo.png" alt="#" /></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class=""> </span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
             <ul class="navbar-nav">
                <li class="nav-item active">
                   <a class="nav-link" href="<?php echo e(url('/')); ?>">Home <span class="sr-only">(current)</span></a>
                </li>
               <li class="nav-item dropdown">
                   <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"> <span class="nav-label">Pages <span class="caret"></span></a>
                   <ul class="dropdown-menu">
                      <li><a href="about.html">About</a></li>
                      <li><a href="testimonial.html">Testimonial</a></li>
                   </ul>
                </li>
                <li class="nav-item">
                   <a class="nav-link" href="product.html">Products</a>
                </li>
                <li class="nav-item">
                   <a class="nav-link" href="blog_list.html">Blog</a>
                </li>
                <li class="nav-item">
                   <a class="nav-link" href="contact.html">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo e(url('show_cart')); ?>">Cart</a>
                 </li>

                <form class="form-inline">
                    <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
                    <i class="fa fa-search" aria-hidden="true"></i>
                    </button>
                </form>

                <?php if(Route::has('login')): ?>

                <?php if(auth()->guard()->check()): ?>
                <li class="nav-item">
                    <form method="POST" action="<?php echo e(route('logout')); ?>">
                        <?php echo csrf_field(); ?>

                        <input type="submit" value="Logout">

                    </form>
                </li>

                <?php else: ?>
                <li class="nav-item">
                    <a class="btn btn-primary" id="logincss" href="<?php echo e(route('login')); ?>">Login</a>
                </li>

                <li class="nav-item">
                    <a class="btn btn-success" href="<?php echo e(route('register')); ?>">Register</a>
                </li>
                <?php endif; ?>

                <?php endif; ?>

             </ul>
          </div>
       </nav>
    </div>
 </header>
<?php /**PATH /home/ahmetceyran/Desktop/Install-Laravel/example_app/example-app/resources/views/home/header.blade.php ENDPATH**/ ?>