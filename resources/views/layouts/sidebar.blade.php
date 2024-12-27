<section class="sidebar">
    <!-- Sidebar Menu -->
    <ul class="sidebar-menu" data-widget="tree">
    <li class="header">MENU UTAMA</li>
    <li class="{{ (request()->is('admin')) ? 'active' : '' }}"><a href="/admin"><i class="fa fa-home"></i> <span>Beranda</span></a></li>
    <li class="{{ (request()->is('admin/data/user*')) ? 'active' : '' }}"><a href="/admin/data/user"><i class="fa fa-users"></i> <span>Data User</span></a></li>
    <li class="{{ (request()->is('admin/data/pegawai*')) ? 'active' : '' }}"><a href="/admin/data/pegawai"><i class="fa fa-users"></i> <span>Data Pegawai</span></a></li>
    <li class="{{ (request()->is('admin/data/pegawai*')) ? 'active' : '' }}"><a href="/admin/data/pegawai"><i class="fa fa-users"></i> <span>Monitoring</span></a></li>
    <li class="{{ (request()->is('admin/data/pegawai*')) ? 'active' : '' }}"><a href="/admin/data/pegawai"><i class="fa fa-users"></i> <span>Laporan</span></a></li>
    <li><a href="/logout"><i class="fa fa-sign-out"></i> <span>Logout</span></a></li>
    </ul>
    
</section>