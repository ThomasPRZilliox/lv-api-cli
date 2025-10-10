<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
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
		<Item Name="example" Type="Folder">
			<Item Name="Example 1 - QMH" Type="Folder">
				<Property Name="NI.SortType" Type="Int">3</Property>
				<Item Name="type defs" Type="Folder">
					<Item Name="general" Type="Folder">
						<Item Name="main_ref.ctl" Type="VI" URL="../examples/main_ref.ctl"/>
					</Item>
					<Item Name="QMH" Type="Folder">
						<Item Name="message.ctl" Type="VI" URL="../examples/message.ctl"/>
						<Item Name="states.ctl" Type="VI" URL="../examples/states.ctl"/>
					</Item>
				</Item>
				<Item Name="subVI" Type="Folder">
					<Item Name="API" Type="Folder">
						<Item Name="external_api_init.vi" Type="VI" URL="../examples/external_api_init.vi"/>
					</Item>
					<Item Name="EHL" Type="Folder"/>
					<Item Name="QMH" Type="Folder">
						<Item Name="enqueue.vi" Type="VI" URL="../examples/enqueue.vi"/>
						<Item Name="obtain_queue.vi" Type="VI" URL="../examples/obtain_queue.vi"/>
					</Item>
				</Item>
				<Item Name="qmh_example.vi" Type="VI" URL="../examples/qmh_example.vi"/>
			</Item>
		</Item>
		<Item Name="subVIs" Type="Folder">
			<Item Name="API" Type="Folder">
				<Item Name="API handler.vi" Type="VI" URL="../src/labview/API handler.vi"/>
				<Item Name="global API.vi" Type="VI" URL="../src/labview/global API.vi"/>
				<Item Name="Stop API handler.vi" Type="VI" URL="../src/labview/Stop API handler.vi"/>
			</Item>
		</Item>
		<Item Name="type defs" Type="Folder">
			<Item Name="API" Type="Folder">
				<Item Name="api message.ctl" Type="VI" URL="../src/labview/api message.ctl"/>
				<Item Name="api states.ctl" Type="VI" URL="../src/labview/api states.ctl"/>
			</Item>
			<Item Name="user events.ctl" Type="VI" URL="../src/labview/user events.ctl"/>
		</Item>
		<Item Name="ehl_init.vi" Type="VI" URL="../examples/ehl_init.vi"/>
		<Item Name="external_api_close.vi" Type="VI" URL="../examples/external_api_close.vi"/>
		<Item Name="main.vi" Type="VI" URL="../src/labview/main.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="zeromq.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/zeromq/zeromq.lvlib"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
