CKEDITOR.editorConfig = function( config ) {
  // Define changes to default configuration here.
  // For complete reference see:
  // http://docs.ckeditor.com/#!/api/CKEDITOR.config

  // The toolbar groups arrangement, optimized for two toolbar rows.
  config.toolbarGroups = [
    { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
    { name: 'colors' },
    { name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align', 'bidi' ] },
    { name: 'editing',     groups: [ 'find', 'selection', 'spellchecker' ] },
    { name: 'clipboard',   groups: [ 'clipboard', 'undo' ] },
    { name: 'insert' },
    { name: 'document',	   groups: [ 'mode', 'document', 'doctools' ] },
    { name: 'styles' },
    { name: 'links' },
    { name: 'tools' },
    { name: 'others' },
    { name: 'about' }
  ];

  // Remove some buttons provided by the standard plugins, which are
  // not needed in the Standard(s) toolbar.
  //config.removeButtons = 'Underline,Subscript,Superscript';
  config.removeButtons = 'Flash';

  // Set the most common block elements.
  config.format_tags = 'p;h1;h2;h3;pre';

  // Simplify the dialog windows.
  config.removeDialogTabs = 'image:advanced;link:advanced';
};