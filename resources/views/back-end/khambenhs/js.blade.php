<script>
    $(document).ready(function () {
        jqueryNumberFormat()

        function jqueryNumberFormat() {
            $("#price").number(true, 0, '.', ',' );
        }
    })
</script>
