$(function(){
	$('#dz-space').dropzone({
		maxSizeFile: 10,
		paramName: "upload[image]",
		addRemoveLinks: true,
		success: function(file, response){
			$(file.previewTemplate).find('.dz-remove').attr('id',response.fileId);
			$(file.previewElement).addClass('dz-success');
		}
	});
});