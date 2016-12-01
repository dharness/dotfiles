var Observable = require("data/observable").Observable;
var frameModule = require("ui/frame");
var dialogs = require("ui/dialogs");

function getMessage(counter) {
    return "Hoorraaay! You unlocked the NativeScript clicker achievement!";
}

function createViewModel() {
    var viewModel = new Observable();
    viewModel.testSubjectId = "abc12345jhf873b2u78dnd88188hn8";
    viewModel.gender = 'F';

    viewModel.selectGender = function(arg) {
        viewModel.set("gender", arg.object.text);
    }

    return viewModel;
}

exports.createViewModel = createViewModel;
