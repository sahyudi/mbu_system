<div class="breadcrumb">
    <a href="">Home</a>
    <a href="">Project Form</a>
</div>
<div class="content">
    <div class="panel">
        <div class="content-header no-mg-top">
            <i class="fa fa-newspaper-o"></i>
            <div class="content-header-title">Project Form</div>
        </div>
        <div class="row">
            <!-- <div class="col-md-1"></div> -->
            <div class="col-md-12">
                <div class="content-box">
                    <form id="form-action">
                        <input type="text" name="id" class="hidden">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">Proyek No</label>
                                    <input id="proyek_no" type="text" class="form-control" name="proyek_no" value="<?= time() ?>" readonly>
                                    <div class="validation-message" data-field="proyek_no"></div>
                                </div>
                                <div class="form-group">
                                    <label for="">Project Name</label>
                                    <input class="form-control" name="project_name" placeholder="Project Name" type="text">
                                    <div class="validation-message" data-field="project_name"></div>
                                </div>
                                <div class="form-group">
                                    <label for="">Tanngal Mulai</label>
                                    <input class="form-control" name="tgl_mulai" placeholder="Tanngal Mulai" type="date">
                                    <div class="validation-message" data-field="tgl_mulai"></div>
                                </div>

                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Tanngal Selesai</label>
                                    <input class="form-control" name="tgl_selesai" placeholder="Tanngal Selesai" type="date">
                                    <div class="validation-message" data-field="tgl_selesai"></div>
                                </div>
                                <div class="form-group">
                                    <label for="">Mesin</label>
                                    <input class="form-control" name="mesin" placeholder="Mesin" type="text">
                                    <div class="validation-message" data-field="mesin"></div>
                                </div>
                                <div class="form-group">
                                    <label for="">Ruangan</label>
                                    <input class="form-control" name="ruangan" placeholder="Ruangan" type="text">
                                    <div class="validation-message" data-field="ruangan"></div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for=""> Deskripsi</label>
                            <textarea name="deskripsi" id="deskripsi" cols="30" rows="20" class="form-control"></textarea>
                            <!-- <input class="form-control" name="stock" placeholder="Stock" type="text"> -->
                            <div class="validation-message" data-field="deskripsi"></div>
                        </div>
                        <div class="form-group">
                            <label for="email">Material</label>
                            <table class="table table-hover responsive" id="table-material">
                                <thead align="center">
                                    <tr>
                                        <th style="width:40%">Material</th>
                                        <th style="width:15%">Stock</th>
                                        <th style="width:15%">Satuan</th>
                                        <th style="width:15%">Sisa Stock</th>
                                        <th style="width:20%">Quantitiy Proyek</th>
                                        <th style="width:10%">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <input type="hidden" id="jumlah-baris" value="1">
                                    <tr class="material" id="material-0">
                                        <td>
                                            <select name="item[]" onchange="getItem(this,0)" id="item-0" class="form-control form-item" style="width:100%;">
                                                <option value=""></option>
                                                <?php foreach ($material as $key) { ?>
                                                    <option value="<?= $key['id'] ?>"><?= $key['kode'] . " - " . $key['nama'] ?></option>
                                                <?php } ?>
                                            </select>
                                        </td>
                                        <td align="center" id="stock-0" class="form-stock"></td>
                                        <td align="center" id="satuan-0" class="form-satuan"></td>
                                        <td align="center" id="sisa-stock-0" class="form-sisa-stock"></td>
                                        <td>
                                            <input type="text" style="text-align:right;" data-type="currency" name="qty[]" id="qty-0" class="form-control form-qty" onkeyup="hitungQty(0)">
                                        </td>
                                        <td class="for-button">
                                            <button type="button" class="btn btn-info btn-add" onclick="addItem()"><i class="fa fa-plus"></i></button>
                                        </td>
                                    </tr>
                                    <div class="new-insert"></div>
                                </tbody>
                            </table>
                        </div>
                    </form>
                    <div class="content-box-footer">
                        <button type="button" class="btn btn-danger action" title="cancel" onclick="form_routes('cancel')">Cancel</button>
                        <button type="button" class="btn btn-primary action float-right" title="save" onclick="form_routes('save')">Save</button>
                    </div>
                </div>
            </div>
            <!-- <div class="col-md-1"></div> -->
        </div>
    </div>
</div>

<script type="text/javascript">
    var onLoad = (function() {
        var index = "";

        var uploader = $('.picker-uploader').uploader({
            upload_url: '<?php echo base_url() . 'uploader/upload'; ?>',
            file_picker_url: '<?php echo base_url() . 'uploader/files'; ?>',
            input_name: 'images',
            maximum_total_files: 4,
            maximum_file_size: 50009000,
            file_types_allowed: ['image/jpeg', 'image/png', 'image/vnd.adobe.photoshop'],
            on_error: function(err) {
                swal({
                    title: "Upload Failed",
                    text: err.messages,
                    type: "warning"
                })
            }
        })

        if (index != '') {
            datagrid.formLoad('#form-action', index);
            uploader.set_files(datagrid.getRowData(index).images)
        }

        $('.loading-panel').hide();
        $('.form-panel').show();
    })();

    function validate(formData) {
        var returnData;
        $('#form-action').disable([".action"]);
        $("button[title='save']").html("Validating data, please wait...");
        $.ajax({
            url: "<?php echo base_url() . 'product/validate'; ?>",
            async: false,
            type: 'POST',
            data: formData,
            success: function(data, textStatus, jqXHR) {
                returnData = data;
            }
        });

        $('#form-action').enable([".action"]);
        $("button[title='save']").html("Save changes");
        if (returnData != 'success') {
            $('#form-action').enable([".action"]);
            $("button[title='save']").html("Save changes");
            $('.validation-message').html('');
            $('.validation-message').each(function() {
                for (var key in returnData) {
                    if ($(this).attr('data-field') == key) {
                        $(this).html(returnData[key]);
                    }
                }
            });
        } else {
            return 'success';
        }
    }

    function save(formData) {
        $("button[title='save']").html("Saving data, please wait...");
        $.post("<?php echo base_url() . 'product/action'; ?>", formData).done(function(data) {
            $('.datagrid-panel').fadeIn();
            $('.form-panel').fadeOut();
            datagrid.reload();
        });
    }

    function cancel() {
        $('.datagrid-panel').fadeIn();
        $('.form-panel').fadeOut();
    }

    function form_routes(action) {
        if (action == 'save') {
            var formData = $('#form-action').serialize();
            if (validate(formData) == 'success') {
                swal({
                    title: "Please check your data",
                    text: "Saved data can not be restored",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    cancelButtonText: "Cancel",
                    confirmButtonText: "Save",
                    closeOnConfirm: true
                }, function() {
                    save(formData);
                });
            }
        } else {
            cancel();
        }
    }

    function getItem(id, urutan) {
        $.ajax({
            url: "<?= base_url('material/editMaterial/') ?>" + id.value,
            type: "post",
            dataType: 'JSON',
            success: function(data) {
                // console.log(data);
                var dataJumlah = data.jumlah;
                $('#stock-' + urutan).html(parseInt(dataJumlah).toLocaleString());
                $('#satuan-' + urutan).html(data.satuan);
            }
        });
    }

    function addItem() {
        const rangeId = $('#jumlah-baris').val()
        const item = $('#material-0').first().clone();
        $('#table-material tbody').append(item);
        const id = 'material-' + rangeId;
        // const urutan = parseInt(rangeId + 1);
        item.attr('id', id);
        $('#' + id + ' .form-item').attr({
            'id': 'item-' + rangeId,
            'onchange': "getItem(this," + rangeId + ")"
        });
        $('#' + id + ' .form-stock').attr({
            'id': 'stock-' + rangeId
        }).html('');
        $('#' + id + ' .form-satuan').attr({
            'id': 'satuan-' + rangeId
        }).html('');
        $('#' + id + ' .form-qty').attr({
            'id': 'qty-' + rangeId,
            'onkeyup': 'hitungQty(' + rangeId + ')'

        }).val('');
        $('#' + id + ' .form-sisa-stock').attr({
            'id': 'sisa-stock-' + rangeId
        }).html('');
        $('#' + id + ' button').remove();

        var btn = '<button href="#" onclick="hapus(' + rangeId + ')" class="btn btn-danger"><i class="fa fa-minus"></i></button>';
        $('#' + id + ' .for-button').append(btn);
        $('#jumlah-baris').val(parseInt(parseInt(rangeId) + 1));
        $('.select2').select2();
    }

    function hapus(params) {
        var id = 'material-' + params;
        $('#' + id).remove('');
    }

    $("input[data-type='currency']").on({
        keyup: function() {
            formatCurrency($(this));
        },
        blur: function() {
            formatCurrency($(this), "blur");
        }
    });

    function hitungQty(id) {
        const stock = parseInt($('#stock-' + id).html().replace(/\,/g, ''));
        var sisaStock = null;
        const qty = parseInt($('#qty-' + id).val().replace(/\,/g, ''));
        // alert(qty)
        if (qty <= 0) {
            $('#qty-' + id).val('');
            return alert('Quantity tidak boleh sama dengan atau kurang dari nol');
        }
        sisaStock = stock - qty;
        if (sisaStock > 0) {
            $('#sisa-stock-' + id).html(parseInt(sisaStock).toLocaleString());
        } else {
            $('#sisa-stock-' + id).html(0)
            $('#qty-' + id).val(parseInt(stock).toLocaleString());
        }
    }

    function totalPengajuan() {
        const rangeId = $('#range-id').val();
        var sumHarga = 0;

        for (let index = 0; index < parseInt(rangeId); index++) {
            if ($('#sub-total-' + index).length != 0) {
                var SubTotal = $('#sub-total-' + index).val();
                if (SubTotal == null || SubTotal == '') {
                    SubTotal = 0;
                }
                sumHarga += parseInt(SubTotal.replace(/\,/g, ''));
            }
        }
        $('#total-cost-unit').html(parseInt(sumHarga).toLocaleString());
    }

    function formatCurrency(input, blur) {
        // appends $ to value, validates decimal side
        // and puts cursor back in right position.

        // get input value
        var input_val = input.val();

        // don't validate empty input
        if (input_val === "") {
            return;
        }

        // original length
        var original_len = input_val.length;

        // initial caret position 
        var caret_pos = input.prop("selectionStart");

        // check for decimal
        if (input_val.indexOf(".") >= 0) {

            // get position of first decimal
            // this prevents multiple decimals from
            // being entered
            var decimal_pos = input_val.indexOf(".");

            // split number by decimal point
            var left_side = input_val.substring(0, decimal_pos);
            var right_side = input_val.substring(decimal_pos);

            // add commas to left side of number
            left_side = formatNumber(left_side);

            // validate right side
            right_side = formatNumber(right_side);

            // On blur make sure 2 numbers after decimal
            // if (blur === "blur") {
            //   right_side += "00";
            // }

            // Limit decimal to only 2 digits
            right_side = right_side.substring(0, 2);

            // join number by .
            input_val = left_side + "." + right_side;

        } else {
            // no decimal entered
            // add commas to number
            // remove all non-digits
            input_val = formatNumber(input_val);
            input_val = input_val;

            // final formatting
            // if (blur === "blur") {
            //   input_val += ".00";
            // }
        }

        // send updated string to input
        input.val(input_val);

        // put caret back in the right position
        var updated_len = input_val.length;
        caret_pos = updated_len - original_len + caret_pos;
        input[0].setSelectionRange(caret_pos, caret_pos);
    }

    function formatNumber(n) {
        // format number 1000000 to 1,234,567
        return n.replace(/\D/g, "").replace(/\B(?=(\d{3})+(?!\d))/g, ",")
    }
</script>