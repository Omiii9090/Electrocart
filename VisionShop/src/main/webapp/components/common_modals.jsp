<!-- Button trigger modal -->

<!-- ---------------------its only model its just for import only not i import it in add to cart model -->
<!-- ----dont aply any on click event use add to cart model for that ----------------------- -->

<!-- Modal -->
<script type="text/javascript" src="js/addtocartjs.js"></script>
<div class="modal fade" id="cart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">You cart </h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <div class="cart-body">

                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                   <button type="button" class="btn btn-primary checkout-btn" >Checkout</button>
            </div>
        </div>
    </div>
</div>

<div id="toast"></div>
