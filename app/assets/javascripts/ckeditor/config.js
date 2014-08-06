CKEDITOR.editorConfig = function( config )
{
  config.language = 'en';
  config.uiColor = '#AADC6E';
  config.filebrowserBrowseUrl = '/local/uploaded_files/select/ck_browser';
  config.filebrowserUploadUrl = '/local/uploaded_files/drop/ck_browser';
};

CKEDITOR.config.toolbar_mini = [
  ['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],
  ['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
  ['NumberedList','BulletedList','-','Outdent','Indent'],
  ['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
  ['Link','Unlink'],
  ['Image','Table','HorizontalRule'],
  ['Styles','Format','Font','FontSize'],
  ['TextColor','BGColor']
];

CKEDITOR.config.toolbar_tiny = [
  ['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
  ['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat']
];

CKEDITOR.config.toolbar_basic = [
  [ 'Bold', 'Italic', 'Underline', 'Strike' ],
  [ 'NumberedList', 'BulletedList', 'HorizontalRule' ],
  [ 'Blockquote' ],
  [ 'Undo', 'Redo' ],
  [ 'insertResolved' ],
  [ 'Source' ]
];

