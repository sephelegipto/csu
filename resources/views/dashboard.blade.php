<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Document</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <link rel="stylesheet" href="{{ asset('css/semantic.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/dataTables.semanticui.min.css') }}">

    <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/dataTables.semanticui.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.0/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.0/js/responsive.semanticui.min.js"></script>

</head>
<body>
    <div id="app">

        @if (Auth::user()->role_id === 1)
            <Myheader></Myheader>
            <div class="container">
                <router-view></router-view>

            </div>
            <Myfooter></Myfooter>
        @elseif (Auth::user()->role_id === 2)
            <StudentHeader></StudentHeader>
            <div class="container">
                <Studpagechecklist></Studpagechecklist>

            </div>
            <MyFooter></MyFooter>
        @endif
        
        
    </div>
    <script src="{{ asset('js/app.js') }}">

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });


    </script>
</body>
</html>
