var createViewModel = require("./intake-form-page-view-model.js").createViewModel;

function onNavigatingTo(args) {
    var page = args.object;
    page.bindingContext = createViewModel();
    page.addCssFile("views/intake-form/intake-form-page.css");
}
exports.onNavigatingTo = onNavigatingTo;
