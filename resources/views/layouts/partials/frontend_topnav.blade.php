<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="{{ url('/') }}">Laravel Sample</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="@yield('user_menu')"><a href="{{ route('users.index') }}">User</a></li>
                <li class="@yield('book_menu')"><a href="{{ route('books.index') }}">Book</a></li>
                <li class="@yield('borrow_menu')"><a href="{{ route('users.list_book') }}">Borrow Book</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
