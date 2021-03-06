window.onload = function() {
	chartDesign = new ChartDesign();
	chartData	= new ChartData(chartDesign);
	
	path = "../zingchart_trial";
	
	new Chart("q1", new ChartDesign().standard, chartData.questions.q1, path, zingchart).render();
	new Chart("q2", new ChartDesign().standard, chartData.questions.q2, path, zingchart).render();
	new Chart("q3", new ChartDesign().standard, chartData.questions.q3, path, zingchart).render();
	new Chart("q4", new ChartDesign().standard, chartData.questions.q4, path, zingchart).render();
	new Chart("q5", new ChartDesign().standard, chartData.questions.q5, path, zingchart).render();
	new Chart("q6", new ChartDesign().standard, chartData.questions.q6, path, zingchart).render();
	new Chart("q7", new ChartDesign().standard, chartData.questions.q7, path, zingchart).render();
	
	var q8Design = new ChartDesign().standard;
	q8Design.settings.graphset[0].plotarea.margin  = "0 150 100 50";
	var q8legend = q8Design.settings.graphset[0].legend;
	q8legend.margin = "350 5 5 5";
	q8legend.width = 550;
	q8Design.dimensions.height = 500;

	new Chart("q8", new ChartDesign().longAnswers, chartData.questions.q8, path, zingchart).render();
	new Chart("q9", new ChartDesign().standard, chartData.questions.q9, path, zingchart).render();

};