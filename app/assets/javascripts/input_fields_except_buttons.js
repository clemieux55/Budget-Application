var non_text_input_types = ["submit", "boolean"];


$('form#inputs input:not([type=non_text_input_types])').addClass("input-fields-without-submit-remember-me");
