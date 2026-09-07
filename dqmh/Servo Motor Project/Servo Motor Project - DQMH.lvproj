<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="26008000">
	<Property Name="NI.LV.All.SaveVersion" Type="Str">26.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Modules" Type="Folder">
			<Item Name="Device Manager.lvlib" Type="Library" URL="../Libraries/Device Manager/Device Manager.lvlib"/>
			<Item Name="Front Panel Emulator.lvlib" Type="Library" URL="../Libraries/Front Panel Emulator/Front Panel Emulator.lvlib"/>
			<Item Name="Servo Motor Emulator.lvlib" Type="Library" URL="../Libraries/Servo Motor Emulator/Servo Motor Emulator.lvlib"/>
		</Item>
		<Item Name="Testers" Type="Folder">
			<Item Name="Test Device Manager API.vi" Type="VI" URL="../Libraries/Device Manager/Test Device Manager API.vi"/>
			<Item Name="Test Front Panel Emulator API.vi" Type="VI" URL="../Libraries/Front Panel Emulator/Test Front Panel Emulator API.vi"/>
			<Item Name="Test Servo Motor Emulator API.vi" Type="VI" URL="../Libraries/Servo Motor Emulator/Test Servo Motor Emulator API.vi"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
