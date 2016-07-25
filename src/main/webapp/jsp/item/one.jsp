<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Position</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

<script type="text/javascript"
	src="<%=request.getContextPath()%>/resource/js/Three.js/Three.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resource/js/Three.js/Detector.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resource/js/Three.js/Stats.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resource/js/Three.js/THREEx.KeyboardState.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resource/js/Three.js/THREEx.FullScreen.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resource/js/Three.js/THREEx.WindowResize.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resource/js/Three.js/_scene.js"></script>

<script>
	if (!Detector.webgl)
		Detector.addGetWebGLMessage();

	var container, scene, camera, renderer, controls;
	var keyboard = new THREEx.KeyboardState();
	var clock = new THREE.Clock();
	var SCREEN_WIDTH = window.innerWidth * 2 / 3, SCREEN_HEIGHT = window.innerHeight * 2 / 3;
	var defPos = 400;
	init();
	animate();

	// FUNCTIONS 		
	function init() {
		// scene
		scene = new THREE.Scene();

		//camera
		var VIEW_ANGLE = 45, ASPECT = SCREEN_WIDTH / SCREEN_HEIGHT, NEAR = 0.1, FAR = 20000;
		camera = new THREE.PerspectiveCamera(VIEW_ANGLE, ASPECT, NEAR, FAR);
		scene.add(camera);
		camera.position.set(200, 200, 400);
		camera.lookAt(scene.position);

		controls = new THREE.TrackballControls(camera);

		// renderer
		renderer = new THREE.WebGLRenderer();
		renderer.setSize(SCREEN_WIDTH, SCREEN_HEIGHT);

		// events
		THREEx.WindowResize(renderer, camera);

		// custom
		//sceneFloor(scene);
		//sceneSkyBox(scene, 5);
		//sceneLeadingCube(scene, -300, 50, 1000);

		sceneBook(scene, "/Project20/resource/model/1/", 0, 0, 0, 160, 250, 30);
	}

	function animate() {
		requestAnimationFrame(animate);
		render();
		update();
	}

	function update() {
		var timer = Date.now() * 0.0008;

		camera.position.x = (Math.cos(timer) * defPos);
		camera.position.z = (Math.sin(timer) * defPos);
		camera.lookAt(scene.position);

		stats.update();
	}

	function render() {
		renderer.render(scene, camera);
	}
</script>
<script>
	$(window).ready(function() {
		$("#contents").append(renderer.domElement);
	});
</script>
</head>
<body>
	<div class="note">
		<h3>Position</h3>
		<input class="buttonBack" type=button value="powrot"
			onCLick="history.back()"> <br />
		<c:if test="${!empty item}">
			<div class="list">
				<div class="element">${item.name}, ${item.description}</div>
			</div>
		</c:if>
	</div>
</body>
</html>