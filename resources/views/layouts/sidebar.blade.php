<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="d-flex flex-column justify-content-between position-sticky pt-3 h-100">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link {{ Request::is('loans*') ? 'active' : '' }}" aria-current="page" href="/loans">
              <span data-feather="list"></span>
              Transaction History
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ Request::is('books*') ? 'active' : '' }}" href="/books">
              <span data-feather="book"></span>
              Books
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ Request::is('members*') ? 'active' : '' }}" href="/members">
              <span data-feather="users"></span>
              Members
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ Request::is('authors*') ? 'active' : '' }}" href="/authors">
              <span data-feather="pen-tool"></span>
              Authors
            </a>
          </li>
        </ul>

        <div class="ms-3 pb-4 d-flex align-items-center">
          <span data-feather="user"></span>
          <div class="ms-1" style="color: rgb(89, 89, 89); font-weight: 500;">{{ auth()->user()->name }}</div>
        </div>
      </div>
    </nav>
  </div>
</div>