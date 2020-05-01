<script>
    $(document).ready(function() {
        settingIframe("#iframe-btn-0", "#thumb_0", "#preview_0");
        CKEDITOR.replace('content' ,{
            filebrowserBrowseUrl : ckeditor_path,
            filebrowserUploadUrl : ckeditor_path,
            filebrowserImageBrowseUrl : ckeditor_path,
        });
        CKEDITOR.replace('note' ,{
            filebrowserBrowseUrl : ckeditor_path,
            filebrowserUploadUrl : ckeditor_path,
            filebrowserImageBrowseUrl : ckeditor_path,
        });
        CKEDITOR.replace('content_en' ,{
            filebrowserBrowseUrl : ckeditor_path,
            filebrowserUploadUrl : ckeditor_path,
            filebrowserImageBrowseUrl : ckeditor_path,
        });
        CKEDITOR.replace('note_en' ,{
            filebrowserBrowseUrl : ckeditor_path,
            filebrowserUploadUrl : ckeditor_path,
            filebrowserImageBrowseUrl : ckeditor_path,
        });
        CKEDITOR.replace('description' ,{
            filebrowserBrowseUrl : ckeditor_path,
            filebrowserUploadUrl : ckeditor_path,
            filebrowserImageBrowseUrl : ckeditor_path,
        });
        CKEDITOR.replace('description_en' ,{
            filebrowserBrowseUrl : ckeditor_path,
            filebrowserUploadUrl : ckeditor_path,
            filebrowserImageBrowseUrl : ckeditor_path,
        });

        $("#images-product-table").on('click','.btn-upload', function () {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            let formData = new FormData();

            const tr = $(this).closest('tr');
            const file = tr.find('.select_file').prop('files')[0];

            formData.append('select_file', file);

            const index = $("#images-product-table tbody tr").length;
            formData.append('index', index);

            $.ajax({
                url:"{{ route('upload.product') }}",
                method:"post",
                data: formData,
                dataType:'JSON',
                contentType: false,
                cache: false,
                processData: false,
                success: function(data) {
                    $('#message').empty();
                    $('#message').css('display', 'block');
                    $('#message').html(data.message);
                    $('#message').addClass(data.class_name)
                    if(data.success == 1) {;
                        tr.html(data.html);
                    }
                }
            })
        });

        $("#btn-new-img").click(function () {
            const tr = `<tr>
                    <td><input type="file" name="select_file" class="select_file" accept="image/*" /></td>
                    <td>
                        <button type="button" class="btn btn-primary btn-upload">Upload</button>
                    </td>
                    <td>
                        <span class="uploaded_image"></span>
                    </td>
                    <td>
                        <label>Ảnh đại diện
                        <input type="radio" class="is_default" name="rdo_is_default" />
                        <input type="hidden" name="is_default[]" value="0" />
                        </label>
                    </td>
                    <td class="text-right"><button type="button" class="btn btn-danger btn-delete-img">Xóa ảnh</button></td>
                </tr>`;
            $("#images-product-table tbody").append(tr);
        })

        $("#images-product-table").on('click','.btn-delete-img', function () {
            $(this).closest('tr').remove();
        })

        $("#images-product-table").on('click','input.is_default', function () {
            $("input[name='is_default[]']").val(0);
            $(this).closest('tr').find("input[name='is_default[]']").val(1);
        })

    });
</script>
