Deface::Override.new(
  virtual_path: 'spree/users/show',
  name: 'user_return_authorization_history_button',
  insert_bottom: "[data-hook='account_my_orders'] h3",
  text: "<button id='returns_history_btn' type='button' class='btn btn-outline-primary mx-4'>
          <i class='zmdi zmdi-undo'></i> <%= Spree.t(:returns_history) %>
         </button>
        <script>
          $('button#returns_history_btn').click(function(e) {
            window.location = '<%= spree.return_authorizations_path %>';
          });
        </script>"
)
