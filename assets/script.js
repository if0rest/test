jQuery(function($) {

    function ajaxModifyRecord(data) {
        $.post('/index.php', data, function(respond) {
            let $notice = $('<div>', {
                class: 'notice',
                text: respond
            });

            if ($('.notice').length == 0) {
                $('body').append($notice);
            }

            setTimeout(function() {
                $notice.detach();
            }, 1500);
        });
    }

/*----------------------------------------------------------------*/

    // Hide row after button click.
    $(document).on('click', '.hide-btn', function() {
        ajaxModifyRecord({id: $(this).data('id')});

        $(this).closest('tr').fadeOut();
    });

/*----------------------------------------------------------------*/

    $(document).on('submit', '.count__form', function(e) {
        let
            $input = $(this).children('.count__input'),
            $minusBtn = $(this).children('.count__minus');
        let data = {
            id: $input.data('id'),
            quantity: $input.val(),
        };

        ajaxModifyRecord(data);

        (data.quantity != 0) ? $minusBtn.prop('disabled', false) : $minusBtn.prop('disabled', true);

        e.preventDefault();
        return false;
    });

/*----------------------------------------------------------------*/

    // Recalculate quantity of item.
    $(document).on('click', '.count__btn', function() {
        let
            $input = $(this).siblings('.count__input'),
            $minusBtn = $input.siblings('.count__minus'),
            id = $input.data('id'),
            quantity = $input.val(),
            data;

        ($(this).hasClass('count__plus')) ? quantity++ : quantity--;

        if (quantity <= 0) {
            quantity = 0;
            $minusBtn.prop('disabled', true);
        } else {
            $minusBtn.prop('disabled', false);
        }

        $input.val(quantity);

        data = {
            id: id,
            quantity: quantity
        }

        setTimeout(function() {
            ajaxModifyRecord(data);
        }, 1000);
    });
})