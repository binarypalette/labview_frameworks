<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Property Name="CCSymbols" Type="Str">AF_Debug_Trace,TRUE;</Property>
	<Property Name="NI.LV.All.SaveVersion" Type="Str">20.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Interfaces" Type="Folder">
			<Item Name="Motor.lvlib" Type="Library" URL="../Motor/Motor.lvlib"/>
			<Item Name="Panel.lvlib" Type="Library" URL="../Panel/Panel.lvlib"/>
		</Item>
		<Item Name="Emulators" Type="Folder">
			<Item Name="Front Panel Emulator.lvlib" Type="Library" URL="../Front Panel Emulator/Front Panel Emulator.lvlib"/>
			<Item Name="Servo Motor Emulator.lvlib" Type="Library" URL="../Servo Motor Emulator/Servo Motor Emulator.lvlib"/>
		</Item>
		<Item Name="Launch Servo Motor.vi" Type="VI" URL="../Launch Servo Motor.vi"/>
		<Item Name="Device Manager.lvlib" Type="Library" URL="../Device Manager/Device Manager.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
