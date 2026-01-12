<?xml version='1.0' encoding='ISO-8859-1' standalone='yes' ?>
<tagfile>
  <compound kind="page">
    <name>index</name>
    <title>Index page</title>
    <filename>index</filename>
  </compound>
  <compound kind="file">
    <name>cxDate.h</name>
    <path>/home/erico/prime/cxWidgets/src/</path>
    <filename>cxDate_8h</filename>
    <class kind="class">cxDate</class>
    <member kind="define">
      <type>#define</type>
      <name>DATE_TEST_IT</name>
      <anchorfile>cxDate_8h.html</anchorfile>
      <anchor>a0</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DEFAULT_YEAR</name>
      <anchorfile>cxDate_8h.html</anchorfile>
      <anchor>a1</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>cxYEAR_MIN</name>
      <anchorfile>cxDate_8h.html</anchorfile>
      <anchor>a2</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>cxMONTHS_IN_YEAR</name>
      <anchorfile>cxDate_8h.html</anchorfile>
      <anchor>a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>cxSTART_MONTH</name>
      <anchorfile>cxDate_8h.html</anchorfile>
      <anchor>a4</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>cxEND_MONTH</name>
      <anchorfile>cxDate_8h.html</anchorfile>
      <anchor>a5</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>cxSTART_DAY</name>
      <anchorfile>cxDate_8h.html</anchorfile>
      <anchor>a6</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxApp</name>
    <filename>classcxApp.html</filename>
    <base>cxObject</base>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>mainLoop</name>
      <anchorfile>classcxApp.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>onRun</name>
      <anchorfile>classcxApp.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>run</name>
      <anchorfile>classcxApp.html</anchorfile>
      <anchor>a4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>onInit</name>
      <anchorfile>classcxApp.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>onExit</name>
      <anchorfile>classcxApp.html</anchorfile>
      <anchor>a6</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxButton</name>
    <filename>classcxButton.html</filename>
    <base>cxWindow</base>
    <member kind="function">
      <type></type>
      <name>cxButton</name>
      <anchorfile>classcxButton.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(cxWindow *pParentWindowPtr=NULL, int pRow=0, int pCol=0, int pHeight=3, int pWidth=3, const string &amp;pLabel=&quot;&quot;)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~cxButton</name>
      <anchorfile>classcxButton.html</anchorfile>
      <anchor>a1</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxComboBox</name>
    <filename>classcxComboBox.html</filename>
    <base>cxMultiLineInput</base>
    <member kind="function">
      <type></type>
      <name>cxComboBox</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(cxWindow *pParentWindow=NULL, int pRow=0, int pCol=0, int pHeight=DEFAULT_HEIGHT, int pWidth=DEFAULT_WIDTH, const string &amp;pLabel=&quot;&quot;, eBorderStyle pBorderStyle=eBS_NOBORDER, eInputKinds pInputKind=eINPUT_NORMAL, string *pExtValue=NULL, bool pMenuEnabled=true)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxComboBox</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a1</anchor>
      <arglist>(const cxComboBox &amp;pThatComboBox)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>showModal</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>(bool pShowSelf=true, bool pBringToTop=true, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>resize</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a4</anchor>
      <arglist>(int pNewHeight, int pNewWidth, bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>move</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>(int pNewRow, int pNewCol, bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>erase</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a6</anchor>
      <arglist>(bool pEraseSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>hide</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a7</anchor>
      <arglist>(bool pHideSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>unhide</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a8</anchor>
      <arglist>(bool pUnhideSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>append</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a9</anchor>
      <arglist>(const string &amp;pItem, bool pRefresh=false, bool pBringToTop=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>remove</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a10</anchor>
      <arglist>(unsigned pItemIndex, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>remove</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a11</anchor>
      <arglist>(const string &amp;pItemText, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeAllItems</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a12</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>showMenu</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a13</anchor>
      <arglist>(bool pBringToTop=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>hideMenu</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a14</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual unsigned</type>
      <name>numMenuItems</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a15</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getItemText</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a16</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>height</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a17</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>width</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a18</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>inputHeight</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a19</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>inputWidth</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a20</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>menuHeight</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a21</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>menuWidth</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a22</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setMenuHeight</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a23</anchor>
      <arglist>(int pNewHeight, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>toggleMenu</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a24</anchor>
      <arglist>(bool pMenuEnabled, bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>menuIsEnabled</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>a25</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>long</type>
      <name>doInputLoop</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>b0</anchor>
      <arglist>(bool pShowSelf, bool &amp;pRunOnLeaveFunction)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>copyCxComboBoxStuff</name>
      <anchorfile>classcxComboBox.html</anchorfile>
      <anchor>b1</anchor>
      <arglist>(const cxComboBox *pThatComboBox)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxDate</name>
    <filename>classcxDate.html</filename>
    <member kind="function">
      <type></type>
      <name>cxDate</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(eDateFormats pDateFormat=YYYY_MM_DD, char pSepChar= &apos;/&apos;)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxDate</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a1</anchor>
      <arglist>(const int &amp;pYear, const int &amp;pMonth, const int &amp;pDay, eDateFormats pDateFormat=YYYY_MM_DD, char pSepChar= &apos;/&apos;)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxDate</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>(const string &amp;pDateStr, eDateFormats pDateFormat=YYYY_MM_DD, char pSepChar= &apos;/&apos;)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxDate</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>(const char pDateStr[], eDateFormats pDateFormat=YYYY_MM_DD, char pSepChar= &apos;/&apos;)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxDate</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a4</anchor>
      <arglist>(long pJulianDate, eDateFormats pDateFormat=YYYY_MM_DD, char pSepChar= &apos;/&apos;)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxDate</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>(const cxDate &amp;pThatDate)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getYear</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a7</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setYear</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a8</anchor>
      <arglist>(const int &amp;pYear)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getMonth</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a9</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMonth</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a10</anchor>
      <arglist>(const int &amp;pMonth)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getDay</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a11</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDay</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a12</anchor>
      <arglist>(const int &amp;pDay)</arglist>
    </member>
    <member kind="function">
      <type>eDateFormats</type>
      <name>getDateFormat</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a13</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDateFormat</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a14</anchor>
      <arglist>(eDateFormats pDateFormat)</arglist>
    </member>
    <member kind="function">
      <type>char</type>
      <name>getSepChar</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a15</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSepChar</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a16</anchor>
      <arglist>(char pSepChar)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getDisplayLong</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a17</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDisplayLong</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a18</anchor>
      <arglist>(bool pDisplayLong)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDate</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a19</anchor>
      <arglist>(int pYear, int pMonth, int pDay)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addYears</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a20</anchor>
      <arglist>(int pNumYears)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>subtractYears</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a21</anchor>
      <arglist>(int pNumYears)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addMonths</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a22</anchor>
      <arglist>(int pNumMonths)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>subtractMonths</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a23</anchor>
      <arglist>(int pNumMonths)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addDays</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a24</anchor>
      <arglist>(int pNumDays)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>subtractDays</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a25</anchor>
      <arglist>(int pNumDays)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator+=</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a26</anchor>
      <arglist>(int pNumDays)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator-=</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a27</anchor>
      <arglist>(int pNumDays)</arglist>
    </member>
    <member kind="function">
      <type>cxDate &amp;</type>
      <name>operator=</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a28</anchor>
      <arglist>(const cxDate &amp;pThatDate)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a29</anchor>
      <arglist>(const cxDate &amp;pThatDate) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator!=</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a30</anchor>
      <arglist>(const cxDate &amp;pThatDate) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator&gt;</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a31</anchor>
      <arglist>(const cxDate &amp;pThatDate) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator&gt;=</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a32</anchor>
      <arglist>(const cxDate &amp;pThatDate) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator&lt;</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a33</anchor>
      <arglist>(const cxDate &amp;pThatDate) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator&lt;=</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a34</anchor>
      <arglist>(const cxDate &amp;pThatDate) const </arglist>
    </member>
    <member kind="function">
      <type>cxDate</type>
      <name>operator++</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a35</anchor>
      <arglist>(int)</arglist>
    </member>
    <member kind="function">
      <type>cxDate &amp;</type>
      <name>operator++</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a36</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>cxDate</type>
      <name>operator--</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a37</anchor>
      <arglist>(int)</arglist>
    </member>
    <member kind="function">
      <type>cxDate &amp;</type>
      <name>operator--</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a38</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>cxDate</type>
      <name>operator+</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a39</anchor>
      <arglist>(const int &amp;pNumDays)</arglist>
    </member>
    <member kind="function">
      <type>cxDate</type>
      <name>operator-</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a40</anchor>
      <arglist>(const int &amp;pNumDays)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>operator-</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a41</anchor>
      <arglist>(const cxDate &amp;pThatDate)</arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>toString</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a42</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>fromString</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a43</anchor>
      <arglist>(const string &amp;pDateStr)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>numMonthDays</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a44</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isLeapYear</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a45</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>long</type>
      <name>toJulian</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a46</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>fromJulian</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>a47</anchor>
      <arglist>(long pJulianDate)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>numMonthDays</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>e0</anchor>
      <arglist>(const int &amp;pMonth, const int &amp;pYear)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static string</type>
      <name>getToday</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>e1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>isLeapYear</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>e2</anchor>
      <arglist>(const int &amp;pYear)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static long</type>
      <name>toJulian</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>e3</anchor>
      <arglist>(int pYear, int pMonth, int pDay)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>fromJulian</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>e4</anchor>
      <arglist>(long pJulianDate, int &amp;pYear, int &amp;pMonth, int &amp;pDay)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>testIt</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>e5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="friend">
      <type>friend ostream &amp;</type>
      <name>operator&lt;&lt;</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>n0</anchor>
      <arglist>(ostream &amp;pOS, const cxDate &amp;pDate)</arglist>
    </member>
    <member kind="friend">
      <type>friend istream &amp;</type>
      <name>operator&gt;&gt;</name>
      <anchorfile>classcxDate.html</anchorfile>
      <anchor>n1</anchor>
      <arglist>(istream &amp;pIS, cxDate &amp;pDate)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxDialog</name>
    <filename>classcxDialog.html</filename>
    <base>cxWindow</base>
    <member kind="function">
      <type></type>
      <name>cxDialog</name>
      <anchorfile>classcxDialog.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(cxWindow *pParentWindow=NULL, int pRow=0, int pCol=0, int pHeight=DEFAULT_HEIGHT, int pWidth=DEFAULT_WIDTH, const string &amp;pTitle=&quot;&quot;, const string &amp;pMessage=&quot;&quot;, const string &amp;pStatus=&quot;&quot;)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxDialog</name>
      <anchorfile>classcxDialog.html</anchorfile>
      <anchor>a1</anchor>
      <arglist>(cxWindow *pParentWindow, int pRow, int pCol, const string &amp;pTitle, const string &amp;pMessage, const string &amp;pStatus)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxDialog</name>
      <anchorfile>classcxDialog.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>(cxWindow *pParentWindow, const string &amp;pTitle, const string &amp;pMessage, const string &amp;pStatus)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxDialog</name>
      <anchorfile>classcxDialog.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>(cxWindow *pParentWindow, const string &amp;pMessage, const string &amp;pStatus)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxDialog</name>
      <anchorfile>classcxDialog.html</anchorfile>
      <anchor>a4</anchor>
      <arglist>(cxWindow *pParentWindow, const string &amp;pMessage)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~cxDialog</name>
      <anchorfile>classcxDialog.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>showModal</name>
      <anchorfile>classcxDialog.html</anchorfile>
      <anchor>a6</anchor>
      <arglist>(bool pShowSelf=true, bool pBringToTop=true, bool pShowSubwindows=true)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxFileViewer</name>
    <filename>classcxFileViewer.html</filename>
    <base>cxScrolledWindow</base>
    <member kind="function">
      <type></type>
      <name>cxFileViewer</name>
      <anchorfile>classcxFileViewer.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(cxWindow *pParentWindow, const string &amp;pFilename, int pRow=0, int pCol=0, int pHeight=DEFAULT_HEIGHT, int pWidth=DEFAULT_WIDTH)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxFileViewer</name>
      <anchorfile>classcxFileViewer.html</anchorfile>
      <anchor>a1</anchor>
      <arglist>(const cxFileViewer &amp;pThatFileViewer)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~cxFileViewer</name>
      <anchorfile>classcxFileViewer.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>show</name>
      <anchorfile>classcxFileViewer.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>(bool pBringToTop=true, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>load</name>
      <anchorfile>classcxFileViewer.html</anchorfile>
      <anchor>a4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>widestLine</name>
      <anchorfile>classcxFileViewer.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>copyCxFileViewerStuff</name>
      <anchorfile>classcxFileViewer.html</anchorfile>
      <anchor>b0</anchor>
      <arglist>(const cxFileViewer *pThatFileViewer)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxForm</name>
    <filename>classcxForm.html</filename>
    <base>cxWindow</base>
    <base>cxWindow</base>
    <base>cxWindow</base>
    <member kind="function">
      <type></type>
      <name>cxForm</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(cxWindow *pParentWindow=NULL, int pRow=0, int pCol=0, int pHeight=DEFAULT_HEIGHT, int pWidth=DEFAULT_WIDTH, const string &amp;pTitle=&quot;&quot;, eBorderStyle pBorderStyle=eBS_SINGLE_LINE, cxWindow *pExtTitleWindow=NULL, cxWindow *pExtStatusWindow=NULL, bool pAutoExit=false, bool pStacked=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxForm</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a1</anchor>
      <arglist>(const cxForm &amp;pThatForm)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~cxForm</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxMultiLineInput *</type>
      <name>append</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>(int pRow, int pCol, int pHeight, int pWidth, const string &amp;pLabel, const string &amp;pValidator=&quot;&quot;, const string &amp;pHelpString=&quot;&quot;, eInputKinds pInputKind=eINPUT_NORMAL, const string &amp;pName=&quot;&quot;, string *pExtValue=NULL)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxComboBox *</type>
      <name>appendComboBox</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a4</anchor>
      <arglist>(int pRow, int pCol, int pHeight, int pWidth, const string &amp;pLabel, const string &amp;pValidator=&quot;&quot;, const string &amp;pHelpString=&quot;&quot;, eInputKinds pInputKind=eINPUT_NORMAL, const string &amp;pName=&quot;&quot;, string *pExtValue=NULL)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxMultiLineInput *</type>
      <name>append</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>(int pHeight, int pWidth, const string &amp;pLabel, const string &amp;pValidator=&quot;&quot;, const string &amp;pHelpString=&quot;&quot;, eInputKinds pInputKind=eINPUT_NORMAL, const string &amp;pName=&quot;&quot;, string *pExtValue=NULL)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxComboBox *</type>
      <name>appendComboBox</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a6</anchor>
      <arglist>(int pHeight, int pWidth, const string &amp;pLabel, const string &amp;pValidator=&quot;&quot;, const string &amp;pHelpString=&quot;&quot;, eInputKinds pInputKind=eINPUT_NORMAL, const string &amp;pName=&quot;&quot;, string *pExtValue=NULL)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxMultiLineInput *</type>
      <name>append</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a7</anchor>
      <arglist>(const cxMultiLineInput &amp;pInput)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>append</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a8</anchor>
      <arglist>(cxMultiLineInput *pInput, int pRow, int pCol, bool *pMoved=NULL)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>remove</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a9</anchor>
      <arglist>(unsigned pIndex)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>remove</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a10</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>remove</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a11</anchor>
      <arglist>(cxMultiLineInput *pInput)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeAll</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a12</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a13</anchor>
      <arglist>(const string &amp;pLabel, int pFunctionKey, funcPtr4 pFieldFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pExitAfterRun=false, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a14</anchor>
      <arglist>(unsigned pIndex, int pFunctionKey, funcPtr4 pFieldFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a15</anchor>
      <arglist>(const string &amp;pLabel, int pFunctionKey, funcPtr2 pFieldFunction, void *p1, void *p2, bool pUseVal, bool pExitAfterRun=false, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a16</anchor>
      <arglist>(unsigned pIndex, int pFunctionKey, funcPtr2 pFieldFunction, void *p1, void *p2, bool pUseVal, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnFocusFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a17</anchor>
      <arglist>(const string &amp;pLabel, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnFocusFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a18</anchor>
      <arglist>(unsigned pIndex, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnLeaveFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a19</anchor>
      <arglist>(const string &amp;pLabel, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnLeaveFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a20</anchor>
      <arglist>(unsigned pIndex, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldLabel</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a21</anchor>
      <arglist>(unsigned pIndex, const string &amp;pLabel)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldLabel</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a22</anchor>
      <arglist>(const string &amp;pName, const string &amp;pLabel)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a23</anchor>
      <arglist>(unsigned pIndex, const string &amp;pName)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setFieldName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a24</anchor>
      <arglist>(const string &amp;pLabel, const string &amp;pName)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>enableInputLoop</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a25</anchor>
      <arglist>(const string &amp;pLabel, bool pDoInputLoop, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>enableInputLoop</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a26</anchor>
      <arglist>(unsigned pIndex, bool pDoInputLoop)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setAutoExit</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a27</anchor>
      <arglist>(bool pAutoExit)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getAutoExit</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a28</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setApplyAttrDefaults</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a29</anchor>
      <arglist>(bool pApplyAttrDefaults)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getApplyAttrDefaults</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a30</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>show</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a31</anchor>
      <arglist>(bool pBringToTop=false, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>showModal</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a32</anchor>
      <arglist>(bool pShowSelf=true, bool pBringToTop=false, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>modalGetsKeypress</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a33</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>hide</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a34</anchor>
      <arglist>(bool pHideSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>unhide</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a35</anchor>
      <arglist>(bool pUnhideSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>move</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a36</anchor>
      <arglist>(int pNewRow, int pNewCol, bool pRefresh=true)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>numInputs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a37</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getValue</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a38</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getValue</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a39</anchor>
      <arglist>(const string &amp;pStr, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getLabel</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a40</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a41</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a42</anchor>
      <arglist>(const string &amp;pLabel) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getStatus</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a43</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getStatus</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a44</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getStatus</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a45</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setValue</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a46</anchor>
      <arglist>(int pIndex, const string &amp;pValue, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setValue</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a47</anchor>
      <arglist>(const string &amp;pLabel, const string &amp;pValue, bool pIsLabel=true, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>refreshInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a48</anchor>
      <arglist>(unsigned pIndex)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>refreshInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a49</anchor>
      <arglist>(const string &amp;pStr, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setMaskChar</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a50</anchor>
      <arglist>(int pIndex, char pMaskChar)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setMaskChar</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a51</anchor>
      <arglist>(const string &amp;pLabel, char pMaskChar, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getMasked</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a52</anchor>
      <arglist>(int pIndex)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getMasked</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a53</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>toggleMasking</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a54</anchor>
      <arglist>(int pIndex, bool pMasking)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>toggleMasking</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a55</anchor>
      <arglist>(const string &amp;pLabel, bool pMasking, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setCurrentInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a56</anchor>
      <arglist>(int pIndex)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setCurrentInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a57</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setCurrentInputByPtr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a58</anchor>
      <arglist>(const cxMultiLineInput *const pInput)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a59</anchor>
      <arglist>(int pFunctionKey, funcPtr4 pFieldFunction, void *p1, void *p2, void *p3, void *p4, bool pUseReturnVal=false, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a60</anchor>
      <arglist>(int pIndex, int pFunctionKey, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pExitAfterRun, bool pRunOnLeaveFunction, bool pRunValidator)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a61</anchor>
      <arglist>(const string &amp;pLabel, int pFunctionKey, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pExitAfterRun, bool pRunOnLeaveFunction, bool pRunValidator, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a62</anchor>
      <arglist>(int pFunctionKey, funcPtr2 pFieldFunction, void *p1, void *p2, bool pUseReturnVal=false, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a63</anchor>
      <arglist>(int pIndex, int pFunctionKey, funcPtr2 pFunction, void *p1, void *p2, bool pUseVal, bool pExitAfterRun, bool pRunOnLeaveFunction, bool pRunValidator)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a64</anchor>
      <arglist>(const string &amp;pLabel, int pFunctionKey, funcPtr2 pFunction, void *p1, void *p2, bool pUseVal, bool pExitAfterRun, bool pRunOnLeaveFunction, bool pRunValidator, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>allFieldsBlank</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a65</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a66</anchor>
      <arglist>(const int &amp;pIndex, attr_t pAttr)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a67</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a68</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a69</anchor>
      <arglist>(const int &amp;pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a70</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLabelColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a71</anchor>
      <arglist>(const int &amp;pIndex, e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLabelColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a72</anchor>
      <arglist>(const string &amp;pLabel, e_cxColors pColor, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllLabelColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a73</anchor>
      <arglist>(e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getLabelColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a74</anchor>
      <arglist>(const int &amp;pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getLabelColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a75</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a76</anchor>
      <arglist>(const int &amp;pIndex, attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a77</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a78</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a79</anchor>
      <arglist>(const int &amp;pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a80</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a81</anchor>
      <arglist>(const int &amp;pIndex, e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a82</anchor>
      <arglist>(const string &amp;pLabel, e_cxColors pColor, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllValueColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a83</anchor>
      <arglist>(e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getValueColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a84</anchor>
      <arglist>(const int &amp;pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getValueColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a85</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttrAndColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a86</anchor>
      <arglist>(const int &amp;pIndex, attr_t pAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttrAndColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a87</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, e_cxColors pColor, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLabelAttrAndColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a88</anchor>
      <arglist>(const int &amp;pIndex, attr_t pAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLabelAttrAndColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a89</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, e_cxColors pColor, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllColors</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a90</anchor>
      <arglist>(e_cxColors pLabelColor, e_cxColors pValueColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputTopRow</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a91</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputTopRow</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a92</anchor>
      <arglist>(const string &amp;pLabel, bool pIslabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputLeftCol</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a93</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputLeftCol</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a94</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputHeight</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a95</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputHeight</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a96</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputWidth</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a97</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputWidth</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a98</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>maxInputLen</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a99</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>maxInputLen</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a100</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>inputLabel</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a101</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>inputLabel</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a102</anchor>
      <arglist>(const string &amp;pName) const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>inputName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a103</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>inputName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a104</anchor>
      <arglist>(const string &amp;pLabel) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a105</anchor>
      <arglist>(int pIndex, attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a106</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, bool isLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a107</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a108</anchor>
      <arglist>(int pIndex, attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a109</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a110</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttrs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a111</anchor>
      <arglist>(int pIndex)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttrs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a112</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttrs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a113</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a114</anchor>
      <arglist>(int pIndex, attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a115</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a116</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a117</anchor>
      <arglist>(int pIndex, attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a118</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a119</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttrs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a120</anchor>
      <arglist>(int pIndex)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttrs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a121</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttrs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a122</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>scrollInputs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a123</anchor>
      <arglist>(int pVScrollAmt, int pHScrollAmt, bool pRefresh=false, bool pBringToTop=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>toggleCursor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a124</anchor>
      <arglist>(int pIndex, bool pShowCursor)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>toggleCursor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a125</anchor>
      <arglist>(const string &amp;pLabel, bool pShowCursor, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>toggleCursor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a126</anchor>
      <arglist>(bool pShowCursor)</arglist>
    </member>
    <member kind="function">
      <type>cxMultiLineInput *</type>
      <name>getInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a127</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>cxMultiLineInput *</type>
      <name>getInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a128</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getKind</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a129</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getKind</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a130</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setKind</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a131</anchor>
      <arglist>(int pIndex, eInputKinds pInputKind)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setKind</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a132</anchor>
      <arglist>(const string &amp;pLabel, eInputKinds pInputKind, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setAllKind</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a133</anchor>
      <arglist>(eInputKinds pInputKind)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setStatus</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a134</anchor>
      <arglist>(const string &amp;pStatus, bool pRefreshStatus=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>disableCustomStatus</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a135</anchor>
      <arglist>(bool pRefreshStatus=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValidatorFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a136</anchor>
      <arglist>(int pIndex, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValidatorFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a137</anchor>
      <arglist>(const string &amp;pLabel, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>showInputsOnBorder</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a138</anchor>
      <arglist>(bool pShowInputsOnBorder)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a139</anchor>
      <arglist>(int pIndex, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a140</anchor>
      <arglist>(const string &amp;pLabel, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllOnKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a141</anchor>
      <arglist>(funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleOnKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a142</anchor>
      <arglist>(int pIndex, bool pRunOnKeyFunction)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleOnKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a143</anchor>
      <arglist>(const string &amp;pLabel, bool pRunOnKeyFunction, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleAllOnKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a144</anchor>
      <arglist>(bool pRunOnKeyFunction)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>onKeyFunctionEnabled</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a145</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>onKeyFunctionEnabled</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a146</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>cxForm &amp;</type>
      <name>operator=</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a147</anchor>
      <arglist>(const cxForm &amp;pThatForm)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addInputJumpKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a148</anchor>
      <arglist>(int pKey, int pIndex)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addInputJumpKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a149</anchor>
      <arglist>(int pKey, const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getCurrentInputIndex</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a150</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>getCurrentInputLabel</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a151</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>getCurrentInputName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a152</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getInputIndex</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a153</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getInputIndex</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a154</anchor>
      <arglist>(const cxMultiLineInput *pInput) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setJumpHotkey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a155</anchor>
      <arglist>(int pJumpHotkey)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getJumpHotkey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a156</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCanBeEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a157</anchor>
      <arglist>(int pIndex, bool pCanBeEditable)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCanBeEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a158</anchor>
      <arglist>(const string &amp;pLabel, bool pCanBeEditable, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllCanBeEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a159</anchor>
      <arglist>(bool pCanBeEditable)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>canBeEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a160</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>canBeEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a161</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>anyInputsCanBeEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a162</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setAllowQuit</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a163</anchor>
      <arglist>(bool pAllowQuit)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getAllowQuit</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a164</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setAllowExit</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a165</anchor>
      <arglist>(bool pAllowExit)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getAllowExit</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a166</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addQuitKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a167</anchor>
      <arglist>(int pKey, bool pRunOnLeaveFunction=true, bool pOverride=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeQuitKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a168</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addExitKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a169</anchor>
      <arglist>(int pKey, bool pRunOnLeaveFunction=true, bool pOverride=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeExitKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a170</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnFocusFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a171</anchor>
      <arglist>(funcPtr4 pFuncPtr, void *p1, void *p2, void *p3, void *p4, bool pUseVal=false, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLoopStartFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a172</anchor>
      <arglist>(funcPtr4 pFuncPtr, void *p1, void *p2, void *p3, void *p4, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLoopEndFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a173</anchor>
      <arglist>(funcPtr4 pFuncPtr, void *p1, void *p2, void *p3, void *p4, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnLeaveFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a174</anchor>
      <arglist>(funcPtr4 pFuncPtr, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>showAllInputs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a175</anchor>
      <arglist>(bool pBringToTop=true, bool pSkipCurrentInput=false) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>formKeyIsSet</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a176</anchor>
      <arglist>(int pKey) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isStacked</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a177</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getExitOnLeaveFirst</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a178</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setExitOnLeaveFirst</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a179</anchor>
      <arglist>(bool pExitOnLeaveFirst)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasEditableInputs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a180</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>firstEditableInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a181</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>lastEditableInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a182</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>bringToTop</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a183</anchor>
      <arglist>(bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasChanged</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a184</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setChanged</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a185</anchor>
      <arglist>(bool pDataChanged)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>trapNonAssignedFKeys</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a186</anchor>
      <arglist>(bool pTrapNonAssignedFKeys)</arglist>
    </member>
    <member kind="function">
      <type>cxMultiForm *</type>
      <name>getParentMultiForm</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a187</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParentMultiForm</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a188</anchor>
      <arglist>(cxMultiForm *pParentMultiForm)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>runLoopStartFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a189</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>runLoopEndFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a190</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>maxValueLen</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a191</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>maxValueLen</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a192</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a193</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a194</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setDisableCursorOnShow</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a195</anchor>
      <arglist>(bool pDisableCursorOnShow)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setWaitForInputIfEmpty</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a196</anchor>
      <arglist>(bool pWaitForInputIfEmpty)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getWaitForInputIfEmpty</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a197</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearInputs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a198</anchor>
      <arglist>(bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>getValues</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a199</anchor>
      <arglist>(map&lt; string, string &gt; &amp;pValues, bool pUseLabels=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setValues</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a200</anchor>
      <arglist>(const map&lt; string, string &gt; &amp;pValues, bool pUseLabels=true, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setEnabled</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a201</anchor>
      <arglist>(bool pEnabled)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>useInputStatus</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a202</anchor>
      <arglist>(bool pUseInputStatus)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a203</anchor>
      <arglist>(const string &amp;pStr, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxWindow *</type>
      <name>getParent</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a204</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxForm</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a205</anchor>
      <arglist>(cxWindow *pParentWindow=NULL, int pRow=0, int pCol=0, int pHeight=DEFAULT_HEIGHT, int pWidth=DEFAULT_WIDTH, const string &amp;pTitle=&quot;&quot;, eBorderStyle pBorderStyle=eBS_SINGLE_LINE, cxWindow *pExtTitleWindow=NULL, cxWindow *pExtStatusWindow=NULL, bool pAutoExit=false, bool pStacked=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxForm</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a206</anchor>
      <arglist>(const cxForm &amp;pThatForm)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~cxForm</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a207</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxMultiLineInput *</type>
      <name>append</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a208</anchor>
      <arglist>(int pRow, int pCol, int pHeight, int pWidth, const string &amp;pLabel, const string &amp;pValidator=&quot;&quot;, const string &amp;pHelpString=&quot;&quot;, eInputKinds pInputKind=eINPUT_NORMAL, const string &amp;pName=&quot;&quot;, string *pExtValue=NULL)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxComboBox *</type>
      <name>appendComboBox</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a209</anchor>
      <arglist>(int pRow, int pCol, int pHeight, int pWidth, const string &amp;pLabel, const string &amp;pValidator=&quot;&quot;, const string &amp;pHelpString=&quot;&quot;, eInputKinds pInputKind=eINPUT_NORMAL, const string &amp;pName=&quot;&quot;, string *pExtValue=NULL)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxMultiLineInput *</type>
      <name>append</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a210</anchor>
      <arglist>(int pHeight, int pWidth, const string &amp;pLabel, const string &amp;pValidator=&quot;&quot;, const string &amp;pHelpString=&quot;&quot;, eInputKinds pInputKind=eINPUT_NORMAL, const string &amp;pName=&quot;&quot;, string *pExtValue=NULL)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxComboBox *</type>
      <name>appendComboBox</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a211</anchor>
      <arglist>(int pHeight, int pWidth, const string &amp;pLabel, const string &amp;pValidator=&quot;&quot;, const string &amp;pHelpString=&quot;&quot;, eInputKinds pInputKind=eINPUT_NORMAL, const string &amp;pName=&quot;&quot;, string *pExtValue=NULL)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxMultiLineInput *</type>
      <name>append</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a212</anchor>
      <arglist>(const cxMultiLineInput &amp;pInput)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>append</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a213</anchor>
      <arglist>(cxMultiLineInput *pInput, int pRow, int pCol, bool *pMoved=NULL)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>remove</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a214</anchor>
      <arglist>(unsigned pIndex)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>remove</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a215</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>remove</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a216</anchor>
      <arglist>(cxMultiLineInput *pInput)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeAll</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a217</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a218</anchor>
      <arglist>(const string &amp;pLabel, int pFunctionKey, funcPtr4 pFieldFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pExitAfterRun=false, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a219</anchor>
      <arglist>(unsigned pIndex, int pFunctionKey, funcPtr4 pFieldFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a220</anchor>
      <arglist>(const string &amp;pLabel, int pFunctionKey, funcPtr2 pFieldFunction, void *p1, void *p2, bool pUseVal, bool pExitAfterRun=false, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a221</anchor>
      <arglist>(unsigned pIndex, int pFunctionKey, funcPtr2 pFieldFunction, void *p1, void *p2, bool pUseVal, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnFocusFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a222</anchor>
      <arglist>(const string &amp;pLabel, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnFocusFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a223</anchor>
      <arglist>(unsigned pIndex, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnLeaveFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a224</anchor>
      <arglist>(const string &amp;pLabel, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnLeaveFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a225</anchor>
      <arglist>(unsigned pIndex, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldLabel</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a226</anchor>
      <arglist>(unsigned pIndex, const string &amp;pLabel)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldLabel</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a227</anchor>
      <arglist>(const string &amp;pName, const string &amp;pLabel)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a228</anchor>
      <arglist>(unsigned pIndex, const string &amp;pName)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setFieldName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a229</anchor>
      <arglist>(const string &amp;pLabel, const string &amp;pName)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>enableInputLoop</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a230</anchor>
      <arglist>(const string &amp;pLabel, bool pDoInputLoop, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>enableInputLoop</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a231</anchor>
      <arglist>(unsigned pIndex, bool pDoInputLoop)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setAutoExit</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a232</anchor>
      <arglist>(bool pAutoExit)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getAutoExit</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a233</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setApplyAttrDefaults</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a234</anchor>
      <arglist>(bool pApplyAttrDefaults)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getApplyAttrDefaults</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a235</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>show</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a236</anchor>
      <arglist>(bool pBringToTop=false, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>showModal</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a237</anchor>
      <arglist>(bool pShowSelf=true, bool pBringToTop=false, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>modalGetsKeypress</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a238</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>hide</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a239</anchor>
      <arglist>(bool pHideSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>unhide</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a240</anchor>
      <arglist>(bool pUnhideSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>move</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a241</anchor>
      <arglist>(int pNewRow, int pNewCol, bool pRefresh=true)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>numInputs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a242</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getValue</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a243</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getValue</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a244</anchor>
      <arglist>(const string &amp;pStr, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getLabel</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a245</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a246</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a247</anchor>
      <arglist>(const string &amp;pLabel) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getStatus</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a248</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getStatus</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a249</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getStatus</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a250</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setValue</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a251</anchor>
      <arglist>(int pIndex, const string &amp;pValue, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setValue</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a252</anchor>
      <arglist>(const string &amp;pLabel, const string &amp;pValue, bool pIsLabel=true, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>refreshInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a253</anchor>
      <arglist>(unsigned pIndex)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>refreshInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a254</anchor>
      <arglist>(const string &amp;pStr, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setMaskChar</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a255</anchor>
      <arglist>(int pIndex, char pMaskChar)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setMaskChar</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a256</anchor>
      <arglist>(const string &amp;pLabel, char pMaskChar, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getMasked</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a257</anchor>
      <arglist>(int pIndex)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getMasked</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a258</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>toggleMasking</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a259</anchor>
      <arglist>(int pIndex, bool pMasking)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>toggleMasking</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a260</anchor>
      <arglist>(const string &amp;pLabel, bool pMasking, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setCurrentInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a261</anchor>
      <arglist>(int pIndex)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setCurrentInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a262</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setCurrentInputByPtr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a263</anchor>
      <arglist>(const cxMultiLineInput *const pInput)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a264</anchor>
      <arglist>(int pFunctionKey, funcPtr4 pFieldFunction, void *p1, void *p2, void *p3, void *p4, bool pUseReturnVal=false, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a265</anchor>
      <arglist>(int pIndex, int pFunctionKey, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pExitAfterRun, bool pRunOnLeaveFunction, bool pRunValidator)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a266</anchor>
      <arglist>(const string &amp;pLabel, int pFunctionKey, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pExitAfterRun, bool pRunOnLeaveFunction, bool pRunValidator, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a267</anchor>
      <arglist>(int pFunctionKey, funcPtr2 pFieldFunction, void *p1, void *p2, bool pUseReturnVal=false, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a268</anchor>
      <arglist>(int pIndex, int pFunctionKey, funcPtr2 pFunction, void *p1, void *p2, bool pUseVal, bool pExitAfterRun, bool pRunOnLeaveFunction, bool pRunValidator)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a269</anchor>
      <arglist>(const string &amp;pLabel, int pFunctionKey, funcPtr2 pFunction, void *p1, void *p2, bool pUseVal, bool pExitAfterRun, bool pRunOnLeaveFunction, bool pRunValidator, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>allFieldsBlank</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a270</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a271</anchor>
      <arglist>(const int &amp;pIndex, attr_t pAttr)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a272</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a273</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a274</anchor>
      <arglist>(const int &amp;pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a275</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLabelColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a276</anchor>
      <arglist>(const int &amp;pIndex, e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLabelColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a277</anchor>
      <arglist>(const string &amp;pLabel, e_cxColors pColor, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllLabelColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a278</anchor>
      <arglist>(e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getLabelColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a279</anchor>
      <arglist>(const int &amp;pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getLabelColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a280</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a281</anchor>
      <arglist>(const int &amp;pIndex, attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a282</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a283</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a284</anchor>
      <arglist>(const int &amp;pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a285</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a286</anchor>
      <arglist>(const int &amp;pIndex, e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a287</anchor>
      <arglist>(const string &amp;pLabel, e_cxColors pColor, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllValueColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a288</anchor>
      <arglist>(e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getValueColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a289</anchor>
      <arglist>(const int &amp;pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getValueColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a290</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttrAndColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a291</anchor>
      <arglist>(const int &amp;pIndex, attr_t pAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttrAndColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a292</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, e_cxColors pColor, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLabelAttrAndColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a293</anchor>
      <arglist>(const int &amp;pIndex, attr_t pAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLabelAttrAndColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a294</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, e_cxColors pColor, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllColors</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a295</anchor>
      <arglist>(e_cxColors pLabelColor, e_cxColors pValueColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputTopRow</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a296</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputTopRow</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a297</anchor>
      <arglist>(const string &amp;pLabel, bool pIslabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputLeftCol</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a298</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputLeftCol</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a299</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputHeight</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a300</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputHeight</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a301</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputWidth</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a302</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputWidth</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a303</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>maxInputLen</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a304</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>maxInputLen</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a305</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>inputLabel</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a306</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>inputLabel</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a307</anchor>
      <arglist>(const string &amp;pName) const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>inputName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a308</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>inputName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a309</anchor>
      <arglist>(const string &amp;pLabel) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a310</anchor>
      <arglist>(int pIndex, attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a311</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, bool isLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a312</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a313</anchor>
      <arglist>(int pIndex, attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a314</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a315</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttrs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a316</anchor>
      <arglist>(int pIndex)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttrs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a317</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttrs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a318</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a319</anchor>
      <arglist>(int pIndex, attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a320</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a321</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a322</anchor>
      <arglist>(int pIndex, attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a323</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a324</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttrs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a325</anchor>
      <arglist>(int pIndex)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttrs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a326</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttrs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a327</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>scrollInputs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a328</anchor>
      <arglist>(int pVScrollAmt, int pHScrollAmt, bool pRefresh=false, bool pBringToTop=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>toggleCursor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a329</anchor>
      <arglist>(int pIndex, bool pShowCursor)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>toggleCursor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a330</anchor>
      <arglist>(const string &amp;pLabel, bool pShowCursor, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>toggleCursor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a331</anchor>
      <arglist>(bool pShowCursor)</arglist>
    </member>
    <member kind="function">
      <type>cxMultiLineInput *</type>
      <name>getInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a332</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>cxMultiLineInput *</type>
      <name>getInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a333</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getKind</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a334</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getKind</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a335</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setKind</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a336</anchor>
      <arglist>(int pIndex, eInputKinds pInputKind)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setKind</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a337</anchor>
      <arglist>(const string &amp;pLabel, eInputKinds pInputKind, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setAllKind</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a338</anchor>
      <arglist>(eInputKinds pInputKind)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setStatus</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a339</anchor>
      <arglist>(const string &amp;pStatus, bool pRefreshStatus=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>disableCustomStatus</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a340</anchor>
      <arglist>(bool pRefreshStatus=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValidatorFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a341</anchor>
      <arglist>(int pIndex, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValidatorFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a342</anchor>
      <arglist>(const string &amp;pLabel, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>showInputsOnBorder</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a343</anchor>
      <arglist>(bool pShowInputsOnBorder)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a344</anchor>
      <arglist>(int pIndex, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a345</anchor>
      <arglist>(const string &amp;pLabel, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllOnKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a346</anchor>
      <arglist>(funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleOnKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a347</anchor>
      <arglist>(int pIndex, bool pRunOnKeyFunction)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleOnKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a348</anchor>
      <arglist>(const string &amp;pLabel, bool pRunOnKeyFunction, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleAllOnKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a349</anchor>
      <arglist>(bool pRunOnKeyFunction)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>onKeyFunctionEnabled</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a350</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>onKeyFunctionEnabled</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a351</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>cxForm &amp;</type>
      <name>operator=</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a352</anchor>
      <arglist>(const cxForm &amp;pThatForm)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addInputJumpKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a353</anchor>
      <arglist>(int pKey, int pIndex)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addInputJumpKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a354</anchor>
      <arglist>(int pKey, const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getCurrentInputIndex</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a355</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>getCurrentInputLabel</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a356</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>getCurrentInputName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a357</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getInputIndex</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a358</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getInputIndex</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a359</anchor>
      <arglist>(const cxMultiLineInput *pInput) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setJumpHotkey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a360</anchor>
      <arglist>(int pJumpHotkey)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getJumpHotkey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a361</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCanBeEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a362</anchor>
      <arglist>(int pIndex, bool pCanBeEditable)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCanBeEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a363</anchor>
      <arglist>(const string &amp;pLabel, bool pCanBeEditable, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllCanBeEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a364</anchor>
      <arglist>(bool pCanBeEditable)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>canBeEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a365</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>canBeEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a366</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>anyInputsCanBeEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a367</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setAllowQuit</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a368</anchor>
      <arglist>(bool pAllowQuit)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getAllowQuit</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a369</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setAllowExit</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a370</anchor>
      <arglist>(bool pAllowExit)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getAllowExit</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a371</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addQuitKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a372</anchor>
      <arglist>(int pKey, bool pRunOnLeaveFunction=true, bool pOverride=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeQuitKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a373</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addExitKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a374</anchor>
      <arglist>(int pKey, bool pRunOnLeaveFunction=true, bool pOverride=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeExitKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a375</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnFocusFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a376</anchor>
      <arglist>(funcPtr4 pFuncPtr, void *p1, void *p2, void *p3, void *p4, bool pUseVal=false, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLoopStartFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a377</anchor>
      <arglist>(funcPtr4 pFuncPtr, void *p1, void *p2, void *p3, void *p4, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLoopEndFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a378</anchor>
      <arglist>(funcPtr4 pFuncPtr, void *p1, void *p2, void *p3, void *p4, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnLeaveFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a379</anchor>
      <arglist>(funcPtr4 pFuncPtr, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>showAllInputs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a380</anchor>
      <arglist>(bool pBringToTop=true, bool pSkipCurrentInput=false) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>formKeyIsSet</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a381</anchor>
      <arglist>(int pKey) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isStacked</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a382</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getExitOnLeaveFirst</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a383</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setExitOnLeaveFirst</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a384</anchor>
      <arglist>(bool pExitOnLeaveFirst)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasEditableInputs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a385</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>firstEditableInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a386</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>lastEditableInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a387</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>bringToTop</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a388</anchor>
      <arglist>(bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasChanged</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a389</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setChanged</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a390</anchor>
      <arglist>(bool pDataChanged)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>trapNonAssignedFKeys</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a391</anchor>
      <arglist>(bool pTrapNonAssignedFKeys)</arglist>
    </member>
    <member kind="function">
      <type>cxMultiForm *</type>
      <name>getParentMultiForm</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a392</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParentMultiForm</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a393</anchor>
      <arglist>(cxMultiForm *pParentMultiForm)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>runLoopStartFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a394</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>runLoopEndFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a395</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>maxValueLen</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a396</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>maxValueLen</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a397</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a398</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a399</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setDisableCursorOnShow</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a400</anchor>
      <arglist>(bool pDisableCursorOnShow)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setWaitForInputIfEmpty</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a401</anchor>
      <arglist>(bool pWaitForInputIfEmpty)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getWaitForInputIfEmpty</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a402</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearInputs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a403</anchor>
      <arglist>(bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>getValues</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a404</anchor>
      <arglist>(map&lt; string, string &gt; &amp;pValues, bool pUseLabels=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setValues</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a405</anchor>
      <arglist>(const map&lt; string, string &gt; &amp;pValues, bool pUseLabels=true, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setEnabled</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a406</anchor>
      <arglist>(bool pEnabled)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>useInputStatus</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a407</anchor>
      <arglist>(bool pUseInputStatus)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a408</anchor>
      <arglist>(const string &amp;pStr, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxWindow *</type>
      <name>getParent</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a409</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>nextEditableInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a410</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxForm</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a411</anchor>
      <arglist>(cxWindow *pParentWindow=NULL, int pRow=0, int pCol=0, int pHeight=DEFAULT_HEIGHT, int pWidth=DEFAULT_WIDTH, const string &amp;pTitle=&quot;&quot;, eBorderStyle pBorderStyle=eBS_SINGLE_LINE, cxWindow *pExtTitleWindow=NULL, cxWindow *pExtStatusWindow=NULL, bool pAutoExit=false, bool pStacked=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxForm</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a412</anchor>
      <arglist>(const cxForm &amp;pThatForm)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~cxForm</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a413</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxMultiLineInput *</type>
      <name>append</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a414</anchor>
      <arglist>(int pRow, int pCol, int pHeight, int pWidth, const string &amp;pLabel, const string &amp;pValidator=&quot;&quot;, const string &amp;pHelpString=&quot;&quot;, eInputKinds pInputKind=eINPUT_NORMAL, const string &amp;pName=&quot;&quot;, string *pExtValue=NULL)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxComboBox *</type>
      <name>appendComboBox</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a415</anchor>
      <arglist>(int pRow, int pCol, int pHeight, int pWidth, const string &amp;pLabel, const string &amp;pValidator=&quot;&quot;, const string &amp;pHelpString=&quot;&quot;, eInputKinds pInputKind=eINPUT_NORMAL, const string &amp;pName=&quot;&quot;, string *pExtValue=NULL)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxMultiLineInput *</type>
      <name>append</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a416</anchor>
      <arglist>(int pHeight, int pWidth, const string &amp;pLabel, const string &amp;pValidator=&quot;&quot;, const string &amp;pHelpString=&quot;&quot;, eInputKinds pInputKind=eINPUT_NORMAL, const string &amp;pName=&quot;&quot;, string *pExtValue=NULL)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxComboBox *</type>
      <name>appendComboBox</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a417</anchor>
      <arglist>(int pHeight, int pWidth, const string &amp;pLabel, const string &amp;pValidator=&quot;&quot;, const string &amp;pHelpString=&quot;&quot;, eInputKinds pInputKind=eINPUT_NORMAL, const string &amp;pName=&quot;&quot;, string *pExtValue=NULL)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxMultiLineInput *</type>
      <name>append</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a418</anchor>
      <arglist>(const cxMultiLineInput &amp;pInput)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>append</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a419</anchor>
      <arglist>(cxMultiLineInput *pInput, int pRow, int pCol, bool *pMoved=NULL)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>remove</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a420</anchor>
      <arglist>(unsigned pIndex)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>remove</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a421</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>remove</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a422</anchor>
      <arglist>(cxMultiLineInput *pInput)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeAll</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a423</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a424</anchor>
      <arglist>(const string &amp;pLabel, int pFunctionKey, funcPtr4 pFieldFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pExitAfterRun=false, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a425</anchor>
      <arglist>(unsigned pIndex, int pFunctionKey, funcPtr4 pFieldFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a426</anchor>
      <arglist>(const string &amp;pLabel, int pFunctionKey, funcPtr2 pFieldFunction, void *p1, void *p2, bool pUseVal, bool pExitAfterRun=false, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a427</anchor>
      <arglist>(unsigned pIndex, int pFunctionKey, funcPtr2 pFieldFunction, void *p1, void *p2, bool pUseVal, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnFocusFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a428</anchor>
      <arglist>(const string &amp;pLabel, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnFocusFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a429</anchor>
      <arglist>(unsigned pIndex, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnLeaveFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a430</anchor>
      <arglist>(const string &amp;pLabel, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnLeaveFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a431</anchor>
      <arglist>(unsigned pIndex, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldLabel</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a432</anchor>
      <arglist>(unsigned pIndex, const string &amp;pLabel)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldLabel</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a433</anchor>
      <arglist>(const string &amp;pName, const string &amp;pLabel)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFieldName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a434</anchor>
      <arglist>(unsigned pIndex, const string &amp;pName)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setFieldName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a435</anchor>
      <arglist>(const string &amp;pLabel, const string &amp;pName)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>enableInputLoop</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a436</anchor>
      <arglist>(const string &amp;pLabel, bool pDoInputLoop, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>enableInputLoop</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a437</anchor>
      <arglist>(unsigned pIndex, bool pDoInputLoop)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setAutoExit</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a438</anchor>
      <arglist>(bool pAutoExit)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getAutoExit</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a439</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setApplyAttrDefaults</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a440</anchor>
      <arglist>(bool pApplyAttrDefaults)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getApplyAttrDefaults</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a441</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>show</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a442</anchor>
      <arglist>(bool pBringToTop=false, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>showModal</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a443</anchor>
      <arglist>(bool pShowSelf=true, bool pBringToTop=false, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>modalGetsKeypress</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a444</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>hide</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a445</anchor>
      <arglist>(bool pHideSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>unhide</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a446</anchor>
      <arglist>(bool pUnhideSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>move</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a447</anchor>
      <arglist>(int pNewRow, int pNewCol, bool pRefresh=true)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>numInputs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a448</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getValue</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a449</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getValue</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a450</anchor>
      <arglist>(const string &amp;pStr, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getLabel</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a451</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a452</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a453</anchor>
      <arglist>(const string &amp;pLabel) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getStatus</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a454</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getStatus</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a455</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getStatus</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a456</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setValue</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a457</anchor>
      <arglist>(int pIndex, const string &amp;pValue, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setValue</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a458</anchor>
      <arglist>(const string &amp;pLabel, const string &amp;pValue, bool pIsLabel=true, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>refreshInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a459</anchor>
      <arglist>(unsigned pIndex)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>refreshInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a460</anchor>
      <arglist>(const string &amp;pStr, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setMaskChar</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a461</anchor>
      <arglist>(int pIndex, char pMaskChar)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setMaskChar</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a462</anchor>
      <arglist>(const string &amp;pLabel, char pMaskChar, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getMasked</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a463</anchor>
      <arglist>(int pIndex)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getMasked</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a464</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>toggleMasking</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a465</anchor>
      <arglist>(int pIndex, bool pMasking)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>toggleMasking</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a466</anchor>
      <arglist>(const string &amp;pLabel, bool pMasking, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setCurrentInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a467</anchor>
      <arglist>(int pIndex)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setCurrentInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a468</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setCurrentInputByPtr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a469</anchor>
      <arglist>(const cxMultiLineInput *const pInput)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a470</anchor>
      <arglist>(int pFunctionKey, funcPtr4 pFieldFunction, void *p1, void *p2, void *p3, void *p4, bool pUseReturnVal=false, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a471</anchor>
      <arglist>(int pIndex, int pFunctionKey, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pExitAfterRun, bool pRunOnLeaveFunction, bool pRunValidator)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a472</anchor>
      <arglist>(const string &amp;pLabel, int pFunctionKey, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pExitAfterRun, bool pRunOnLeaveFunction, bool pRunValidator, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a473</anchor>
      <arglist>(int pFunctionKey, funcPtr2 pFieldFunction, void *p1, void *p2, bool pUseReturnVal=false, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a474</anchor>
      <arglist>(int pIndex, int pFunctionKey, funcPtr2 pFunction, void *p1, void *p2, bool pUseVal, bool pExitAfterRun, bool pRunOnLeaveFunction, bool pRunValidator)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a475</anchor>
      <arglist>(const string &amp;pLabel, int pFunctionKey, funcPtr2 pFunction, void *p1, void *p2, bool pUseVal, bool pExitAfterRun, bool pRunOnLeaveFunction, bool pRunValidator, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>allFieldsBlank</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a476</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a477</anchor>
      <arglist>(const int &amp;pIndex, attr_t pAttr)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a478</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a479</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a480</anchor>
      <arglist>(const int &amp;pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a481</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLabelColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a482</anchor>
      <arglist>(const int &amp;pIndex, e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLabelColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a483</anchor>
      <arglist>(const string &amp;pLabel, e_cxColors pColor, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllLabelColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a484</anchor>
      <arglist>(e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getLabelColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a485</anchor>
      <arglist>(const int &amp;pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getLabelColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a486</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a487</anchor>
      <arglist>(const int &amp;pIndex, attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a488</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a489</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a490</anchor>
      <arglist>(const int &amp;pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a491</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a492</anchor>
      <arglist>(const int &amp;pIndex, e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a493</anchor>
      <arglist>(const string &amp;pLabel, e_cxColors pColor, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllValueColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a494</anchor>
      <arglist>(e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getValueColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a495</anchor>
      <arglist>(const int &amp;pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getValueColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a496</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttrAndColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a497</anchor>
      <arglist>(const int &amp;pIndex, attr_t pAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttrAndColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a498</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, e_cxColors pColor, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLabelAttrAndColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a499</anchor>
      <arglist>(const int &amp;pIndex, attr_t pAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLabelAttrAndColor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a500</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, e_cxColors pColor, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllColors</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a501</anchor>
      <arglist>(e_cxColors pLabelColor, e_cxColors pValueColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputTopRow</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a502</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputTopRow</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a503</anchor>
      <arglist>(const string &amp;pLabel, bool pIslabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputLeftCol</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a504</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputLeftCol</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a505</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputHeight</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a506</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputHeight</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a507</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputWidth</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a508</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>inputWidth</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a509</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>maxInputLen</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a510</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>maxInputLen</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a511</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>inputLabel</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a512</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>inputLabel</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a513</anchor>
      <arglist>(const string &amp;pName) const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>inputName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a514</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>inputName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a515</anchor>
      <arglist>(const string &amp;pLabel) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a516</anchor>
      <arglist>(int pIndex, attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a517</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, bool isLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a518</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a519</anchor>
      <arglist>(int pIndex, attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a520</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a521</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttrs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a522</anchor>
      <arglist>(int pIndex)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttrs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a523</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttrs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a524</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a525</anchor>
      <arglist>(int pIndex, attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a526</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a527</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a528</anchor>
      <arglist>(int pIndex, attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a529</anchor>
      <arglist>(const string &amp;pLabel, attr_t pAttr, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttr</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a530</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttrs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a531</anchor>
      <arglist>(int pIndex)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttrs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a532</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttrs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a533</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>scrollInputs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a534</anchor>
      <arglist>(int pVScrollAmt, int pHScrollAmt, bool pRefresh=false, bool pBringToTop=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>toggleCursor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a535</anchor>
      <arglist>(int pIndex, bool pShowCursor)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>toggleCursor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a536</anchor>
      <arglist>(const string &amp;pLabel, bool pShowCursor, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>toggleCursor</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a537</anchor>
      <arglist>(bool pShowCursor)</arglist>
    </member>
    <member kind="function">
      <type>cxMultiLineInput *</type>
      <name>getInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a538</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>cxMultiLineInput *</type>
      <name>getInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a539</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getKind</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a540</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getKind</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a541</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setKind</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a542</anchor>
      <arglist>(int pIndex, eInputKinds pInputKind)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setKind</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a543</anchor>
      <arglist>(const string &amp;pLabel, eInputKinds pInputKind, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setAllKind</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a544</anchor>
      <arglist>(eInputKinds pInputKind)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setStatus</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a545</anchor>
      <arglist>(const string &amp;pStatus, bool pRefreshStatus=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>disableCustomStatus</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a546</anchor>
      <arglist>(bool pRefreshStatus=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValidatorFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a547</anchor>
      <arglist>(int pIndex, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValidatorFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a548</anchor>
      <arglist>(const string &amp;pLabel, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>showInputsOnBorder</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a549</anchor>
      <arglist>(bool pShowInputsOnBorder)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a550</anchor>
      <arglist>(int pIndex, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a551</anchor>
      <arglist>(const string &amp;pLabel, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllOnKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a552</anchor>
      <arglist>(funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleOnKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a553</anchor>
      <arglist>(int pIndex, bool pRunOnKeyFunction)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleOnKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a554</anchor>
      <arglist>(const string &amp;pLabel, bool pRunOnKeyFunction, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleAllOnKeyFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a555</anchor>
      <arglist>(bool pRunOnKeyFunction)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>onKeyFunctionEnabled</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a556</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>onKeyFunctionEnabled</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a557</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>cxForm &amp;</type>
      <name>operator=</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a558</anchor>
      <arglist>(const cxForm &amp;pThatForm)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addInputJumpKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a559</anchor>
      <arglist>(int pKey, int pIndex)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addInputJumpKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a560</anchor>
      <arglist>(int pKey, const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getCurrentInputIndex</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a561</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>getCurrentInputLabel</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a562</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>getCurrentInputName</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a563</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getInputIndex</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a564</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getInputIndex</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a565</anchor>
      <arglist>(const cxMultiLineInput *pInput) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setJumpHotkey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a566</anchor>
      <arglist>(int pJumpHotkey)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getJumpHotkey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a567</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCanBeEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a568</anchor>
      <arglist>(int pIndex, bool pCanBeEditable)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCanBeEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a569</anchor>
      <arglist>(const string &amp;pLabel, bool pCanBeEditable, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllCanBeEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a570</anchor>
      <arglist>(bool pCanBeEditable)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>canBeEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a571</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>canBeEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a572</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>anyInputsCanBeEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a573</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setAllowQuit</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a574</anchor>
      <arglist>(bool pAllowQuit)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getAllowQuit</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a575</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setAllowExit</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a576</anchor>
      <arglist>(bool pAllowExit)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getAllowExit</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a577</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addQuitKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a578</anchor>
      <arglist>(int pKey, bool pRunOnLeaveFunction=true, bool pOverride=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeQuitKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a579</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addExitKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a580</anchor>
      <arglist>(int pKey, bool pRunOnLeaveFunction=true, bool pOverride=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeExitKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a581</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnFocusFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a582</anchor>
      <arglist>(funcPtr4 pFuncPtr, void *p1, void *p2, void *p3, void *p4, bool pUseVal=false, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLoopStartFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a583</anchor>
      <arglist>(funcPtr4 pFuncPtr, void *p1, void *p2, void *p3, void *p4, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLoopEndFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a584</anchor>
      <arglist>(funcPtr4 pFuncPtr, void *p1, void *p2, void *p3, void *p4, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnLeaveFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a585</anchor>
      <arglist>(funcPtr4 pFuncPtr, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>showAllInputs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a586</anchor>
      <arglist>(bool pBringToTop=true, bool pSkipCurrentInput=false) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>formKeyIsSet</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a587</anchor>
      <arglist>(int pKey) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isStacked</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a588</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getExitOnLeaveFirst</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a589</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setExitOnLeaveFirst</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a590</anchor>
      <arglist>(bool pExitOnLeaveFirst)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasEditableInputs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a591</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>firstEditableInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a592</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>lastEditableInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a593</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>bringToTop</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a594</anchor>
      <arglist>(bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasChanged</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a595</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setChanged</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a596</anchor>
      <arglist>(bool pDataChanged)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>trapNonAssignedFKeys</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a597</anchor>
      <arglist>(bool pTrapNonAssignedFKeys)</arglist>
    </member>
    <member kind="function">
      <type>cxMultiForm *</type>
      <name>getParentMultiForm</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a598</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParentMultiForm</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a599</anchor>
      <arglist>(cxMultiForm *pParentMultiForm)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>runLoopStartFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a600</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>runLoopEndFunction</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a601</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>maxValueLen</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a602</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>maxValueLen</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a603</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a604</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isEditable</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a605</anchor>
      <arglist>(const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setDisableCursorOnShow</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a606</anchor>
      <arglist>(bool pDisableCursorOnShow)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setWaitForInputIfEmpty</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a607</anchor>
      <arglist>(bool pWaitForInputIfEmpty)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getWaitForInputIfEmpty</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a608</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearInputs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a609</anchor>
      <arglist>(bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>getValues</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a610</anchor>
      <arglist>(map&lt; string, string &gt; &amp;pValues, bool pUseLabels=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setValues</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a611</anchor>
      <arglist>(const map&lt; string, string &gt; &amp;pValues, bool pUseLabels=true, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setEnabled</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a612</anchor>
      <arglist>(bool pEnabled)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>useInputStatus</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a613</anchor>
      <arglist>(bool pUseInputStatus)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a614</anchor>
      <arglist>(const string &amp;pStr, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxWindow *</type>
      <name>getParent</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>a615</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>vector&lt; cxMultiLineInput * &gt;</type>
      <name>inputPtrContainer</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>x0</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>vector&lt; cxMultiLineInput * &gt;</type>
      <name>inputPtrContainer</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>x1</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>vector&lt; cxMultiLineInput * &gt;</type>
      <name>inputPtrContainer</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>x2</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>copyCxFormStuff</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>b0</anchor>
      <arglist>(const cxForm *pThatForm)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>lookForEditableInputs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>b1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>long</type>
      <name>doInputLoop</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>b2</anchor>
      <arglist>(bool &amp;pRunOnLeaveFunction)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>doCurrentInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>b3</anchor>
      <arglist>(long &amp;pReturnCode, bool &amp;pRunOnLeaveFunction, bool &amp;pFunctionExists, bool pExitOverride=false)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>setIsModal</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>b4</anchor>
      <arglist>(bool pIsModal)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>setLastKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>b5</anchor>
      <arglist>(int pLastKey)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>copyCxFormStuff</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>b6</anchor>
      <arglist>(const cxForm *pThatForm)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>lookForEditableInputs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>b7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>long</type>
      <name>doInputLoop</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>b8</anchor>
      <arglist>(bool &amp;pRunOnLeaveFunction)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>doCurrentInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>b9</anchor>
      <arglist>(long &amp;pReturnCode, bool &amp;pRunOnLeaveFunction, bool &amp;pFunctionExists, bool pExitOverride=false)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>setIsModal</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>b10</anchor>
      <arglist>(bool pIsModal)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>setLastKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>b11</anchor>
      <arglist>(int pLastKey)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>copyCxFormStuff</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>b12</anchor>
      <arglist>(const cxForm *pThatForm)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>lookForEditableInputs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>b13</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>long</type>
      <name>doInputLoop</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>b14</anchor>
      <arglist>(bool &amp;pRunOnLeaveFunction)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>doCurrentInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>b15</anchor>
      <arglist>(long &amp;pReturnCode, bool &amp;pRunOnLeaveFunction, bool &amp;pFunctionExists, bool pExitOverride=false)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>setIsModal</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>b16</anchor>
      <arglist>(bool pIsModal)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>setLastKey</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>b17</anchor>
      <arglist>(int pLastKey)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>inputPtrContainer</type>
      <name>mInputs</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>p0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>int</type>
      <name>mCurrentInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>p1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>vector&lt; pair&lt; int, int &gt; &gt;</type>
      <name>mInputPositions</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>p2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>mTrapNonAssignedFKeys</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>p3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>vector&lt; pair&lt; int, int &gt; &gt;</type>
      <name>mInputPositions</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>p4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>vector&lt; pair&lt; int, int &gt; &gt;</type>
      <name>mInputPositions</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>p5</anchor>
      <arglist></arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>cxMultiLineInput</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>n0</anchor>
      <arglist></arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>cxMultiForm</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>n1</anchor>
      <arglist></arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>cxPanel</name>
      <anchorfile>classcxForm.html</anchorfile>
      <anchor>n2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxFrame</name>
    <filename>classcxFrame.html</filename>
    <base>cxWindow</base>
    <member kind="function">
      <type></type>
      <name>cxFrame</name>
      <anchorfile>classcxFrame.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(cxWindow *pParentWindow=NULL, int pRow=0, int pCol=0, int pHeight=DEFAULT_HEIGHT, int pWidth=DEFAULT_WIDTH, const string &amp;pTitle=&quot;&quot;, const string &amp;pMessage=&quot;&quot;, const string &amp;pStatus=&quot;&quot;, eBorderStyle pBorderStyle=eBS_SINGLE_LINE, cxWindow *pExtTitleWindow=NULL, cxWindow *pExtStatusWindow=NULL, bool pMessageUnderlines=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxFunction</name>
    <filename>classcxFunction.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual string</type>
      <name>runFunction</name>
      <anchorfile>classcxFunction.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxFunction</name>
      <anchorfile>classcxFunction.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>(bool pUseReturnVal, bool pExitAfterRun, bool pRunOnLeaveFunction)</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual string</type>
      <name>runFunction</name>
      <anchorfile>classcxFunction.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getUseReturnVal</name>
      <anchorfile>classcxFunction.html</anchorfile>
      <anchor>a6</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setUseReturnVal</name>
      <anchorfile>classcxFunction.html</anchorfile>
      <anchor>a7</anchor>
      <arglist>(bool pUseReturnVal)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getExitAfterRun</name>
      <anchorfile>classcxFunction.html</anchorfile>
      <anchor>a8</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setExitAfterRun</name>
      <anchorfile>classcxFunction.html</anchorfile>
      <anchor>a9</anchor>
      <arglist>(bool pExitAfterRun)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getRunOnLeaveFunction</name>
      <anchorfile>classcxFunction.html</anchorfile>
      <anchor>a10</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setRunOnLeaveFunction</name>
      <anchorfile>classcxFunction.html</anchorfile>
      <anchor>a11</anchor>
      <arglist>(bool pRunOnLeaveFunction)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxFunction2</name>
    <filename>classcxFunction2.html</filename>
    <base>cxFunction</base>
    <base>cxFunction</base>
    <member kind="function">
      <type></type>
      <name>cxFunction2</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(funcPtr2 pFuncPtr=NULL, bool pUseReturnVal=false, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~cxFunction2</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>functionIsSet</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFunction</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>(funcPtr2 pFuncPtr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParams</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a4</anchor>
      <arglist>(void *pParam1, void *pParam2)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParam1</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>(void *pParam)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParam2</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a6</anchor>
      <arglist>(void *pParam)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>getParam1</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a7</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>getParam2</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a8</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>runFunction</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxFunction2</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a10</anchor>
      <arglist>(funcPtr2 pFuncPtr=NULL, void *pParam1=NULL, void *pParam2=NULL, bool pUseReturnVal=false, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~cxFunction2</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a11</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>functionIsSet</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a12</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFunction</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a13</anchor>
      <arglist>(funcPtr2 pFuncPtr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParams</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a14</anchor>
      <arglist>(void *pParam1, void *pParam2)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParam1</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a15</anchor>
      <arglist>(void *pParam)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParam2</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a16</anchor>
      <arglist>(void *pParam)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>getParam1</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a17</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>getParam2</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a18</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>runFunction</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>a19</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>mUseReturnVal</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>o0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>mExitAfterRun</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>o1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>mRunOnLeaveFunction</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>o2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>funcPtr2</type>
      <name>mFunction</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>o3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void *</type>
      <name>mParam1</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>o4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void *</type>
      <name>mParam2</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>o5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void *</type>
      <name>mParam1</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>o6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void *</type>
      <name>mParam2</name>
      <anchorfile>classcxFunction2.html</anchorfile>
      <anchor>o7</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxFunction4</name>
    <filename>classcxFunction4.html</filename>
    <base>cxFunction</base>
    <base>cxFunction</base>
    <member kind="function">
      <type></type>
      <name>cxFunction4</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(funcPtr4 pFuncPtr=NULL, bool pUseReturnVal=false, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~cxFunction4</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>functionIsSet</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFunction</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>(funcPtr4 pFuncPtr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParams</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a4</anchor>
      <arglist>(void *pParam1, void *pParam2, void *pParam3, void *pParam4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParam1</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>(void *pParam)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParam2</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a6</anchor>
      <arglist>(void *pParam)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParam3</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a7</anchor>
      <arglist>(void *pParam)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParam4</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a8</anchor>
      <arglist>(void *pParam)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>getParam1</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a9</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>getParam2</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a10</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>getParam3</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a11</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>getParam4</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a12</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>runFunction</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a13</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxFunction4</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a14</anchor>
      <arglist>(funcPtr4 pFuncPtr=NULL, void *pParam1=NULL, void *pParam2=NULL, void *pParam3=NULL, void *pParam4=NULL, bool pUseReturnVal=false, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~cxFunction4</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a15</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>functionIsSet</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a16</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFunction</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a17</anchor>
      <arglist>(funcPtr4 pFuncPtr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParams</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a18</anchor>
      <arglist>(void *pParam1, void *pParam2, void *pParam3, void *pParam4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParam1</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a19</anchor>
      <arglist>(void *pParam)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParam2</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a20</anchor>
      <arglist>(void *pParam)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParam3</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a21</anchor>
      <arglist>(void *pParam)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParam4</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a22</anchor>
      <arglist>(void *pParam)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>getParam1</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a23</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>getParam2</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a24</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>getParam3</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a25</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>getParam4</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a26</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>runFunction</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>a27</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>mUseReturnVal</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>o0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>mExitAfterRun</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>o1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>mRunOnLeaveFunction</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>o2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>funcPtr4</type>
      <name>mFunction</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>o3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void *</type>
      <name>mParam1</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>o4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void *</type>
      <name>mParam2</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>o5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void *</type>
      <name>mParam3</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>o6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void *</type>
      <name>mParam4</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>o7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void *</type>
      <name>mParam1</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>o8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void *</type>
      <name>mParam2</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>o9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void *</type>
      <name>mParam3</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>o10</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void *</type>
      <name>mParam4</name>
      <anchorfile>classcxFunction4.html</anchorfile>
      <anchor>o11</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxInput</name>
    <filename>classcxInput.html</filename>
    <base>cxWindow</base>
    <member kind="function">
      <type></type>
      <name>cxInput</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(cxWindow *pParentWindow=NULL, int pRow=0, int pCol=0, int pWidth=DEFAULT_WIDTH, const string &amp;pLabel=&quot;&quot;, eBorderStyle pBorderStyle=eBS_NOBORDER, eInputKinds pInputKind=eINPUT_NORMAL, bool pExitOnFull=false, string *pExtVal=NULL)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxInput</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a1</anchor>
      <arglist>(const cxInput &amp;pThatInput)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~cxInput</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>show</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>(bool pBringToTop=false, bool pShowSubwindows=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>showModal</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a4</anchor>
      <arglist>(bool pShowSelf=true, bool pBringToTop=true, bool pShowSubwindows=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getLabel</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLabel</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a6</anchor>
      <arglist>(const string &amp;pLabel)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearValue</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a7</anchor>
      <arglist>(bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clear</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a8</anchor>
      <arglist>(bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getValue</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a9</anchor>
      <arglist>(bool pRemoveLeadingSpaces=false, bool pRemoveTrailingSpaces=false) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setValue</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a10</anchor>
      <arglist>(const string &amp;pValue, bool pRefresh=false)</arglist>
    </member>
    <member kind="function">
      <type>string *</type>
      <name>getExtValue</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a11</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setExtValue</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a12</anchor>
      <arglist>(string *pExtVal, bool pRefresh=false)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getExitOnFull</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a13</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setExitOnFull</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a14</anchor>
      <arglist>(bool pExitOnFull)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getMustFill</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a15</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMustFill</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a16</anchor>
      <arglist>(bool pMustFill)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getMasked</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a17</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleMasking</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a18</anchor>
      <arglist>(bool pMasking)</arglist>
    </member>
    <member kind="function">
      <type>char</type>
      <name>getMaskChar</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a19</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMaskChar</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a20</anchor>
      <arglist>(char pMaskChar)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getKind</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a21</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setKind</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a22</anchor>
      <arglist>(eInputKinds pInputKind)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValidator</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a23</anchor>
      <arglist>(const string &amp;pVString)</arglist>
    </member>
    <member kind="function">
      <type>const string &amp;</type>
      <name>getValidatorStr</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a24</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const string &amp;</type>
      <name>getName</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a25</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a26</anchor>
      <arglist>(const string &amp;pName)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getInputLen</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a27</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCursorX</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a28</anchor>
      <arglist>(int pCursorX)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>move</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a29</anchor>
      <arglist>(int pNewRow, int pNewCol, bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>resize</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a30</anchor>
      <arglist>(int pNewHeight, int pNewWidth, bool pRefresh=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setExitOnFKey</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a31</anchor>
      <arglist>(bool pExitOnFunctionKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>textIsValid</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a32</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>textIsValid</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a33</anchor>
      <arglist>(const string &amp;pText) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLabelAttr</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a34</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual attr_t</type>
      <name>getLabelAttr</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a35</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLabelColor</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a36</anchor>
      <arglist>(e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getLabelColor</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a37</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLabelAttrAndColor</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a38</anchor>
      <arglist>(attr_t pAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttr</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a39</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getValueAttr</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a40</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>set&lt; attr_t &gt;</type>
      <name>getValueAttrs</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a41</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueColor</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a42</anchor>
      <arglist>(e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getValueColor</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a43</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttrAndColor</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a44</anchor>
      <arglist>(attr_t pAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setColors</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a45</anchor>
      <arglist>(e_cxColors pLabelColor, e_cxColors pValueColor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addLabelAttr</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a46</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttr</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a47</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttrs</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a48</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addValueAttr</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a49</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttr</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a50</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttrs</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a51</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addAttrs</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a52</anchor>
      <arglist>(attr_t pLabelAttr, attr_t pValueAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeAttrs</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a53</anchor>
      <arglist>(attr_t pLabelAttr, attr_t pValueAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeAttrs</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a54</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleCursor</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a55</anchor>
      <arglist>(bool pShowCursor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValidatorFunction</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a56</anchor>
      <arglist>(funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setOnKeyFunction</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a57</anchor>
      <arglist>(funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleOnKeyFunction</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a58</anchor>
      <arglist>(bool pRunOnKeyFunction)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>onKeyFunctionEnabled</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a59</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isFull</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a60</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>maxValueLen</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a61</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasFocus</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a62</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setReadOnlyOnLeave</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a63</anchor>
      <arglist>(bool pReadOnlyOnLeave)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>canBeEditable</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a64</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCanBeEditable</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a65</anchor>
      <arglist>(bool pCanBeEditable)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setBorderStyle</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a66</anchor>
      <arglist>(eBorderStyle pBorderStyle)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>refreshValue</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a67</anchor>
      <arglist>(bool pRefresh=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>trapNonAssignedFKeys</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a68</anchor>
      <arglist>(bool pTrapNonAssignedFKeys)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>enableInputLoop</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a69</anchor>
      <arglist>(bool pDoInputLoop)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>inputLoopEnabled</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a70</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isEditable</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a71</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getCursorAfterInput</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a72</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCursorAfterInput</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a73</anchor>
      <arglist>(bool pCursorAfterInput)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setValidateOnReverse</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a74</anchor>
      <arglist>(bool pValidateOnReverse)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getValidateOnReverse</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a75</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLastKey</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a76</anchor>
      <arglist>(int pLastKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>modalGetsKeypress</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a77</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>runOnFocusFunction</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a78</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxWindow *</type>
      <name>getParent</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>a79</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" static="yes">
      <type>static string</type>
      <name>clearInput</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>e0</anchor>
      <arglist>(void *theInput, void *unused)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>handleFunctionForLastKey</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>b0</anchor>
      <arglist>(bool *pFunctionExists=NULL)</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>cxMultiLineInput</name>
      <anchorfile>classcxInput.html</anchorfile>
      <anchor>n0</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxMenu</name>
    <filename>classcxMenu.html</filename>
    <base>cxWindow</base>
    <member kind="function">
      <type></type>
      <name>cxMenu</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(cxWindow *pParentWindow=NULL, int pRow=0, int pCol=0, int pHeight=DEFAULT_HEIGHT, int pWidth=DEFAULT_WIDTH, const string &amp;pTitle=&quot;&quot;, cxWindow *pExtTitleWindow=NULL, cxWindow *pExtStatusWindow=NULL, eBorderStyle pBorderStyle=eBS_SINGLE_LINE)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxMenu</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a1</anchor>
      <arglist>(const cxMenu &amp;pThatMenu)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~cxMenu</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>append</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>(const string &amp;pItem, long pReturnCode, const string &amp;pHelpString=&quot;&quot;, cxMenuItemType pType=cxITEM_NORMAL, bool pResize=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>appendWithPullRight</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a4</anchor>
      <arglist>(const string &amp;pItem, cxMenu *pSubMenu, const string &amp;pHelpString=&quot;&quot;, bool pResize=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>appendWithPopUp</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>(const string &amp;pItem, cxMenu *pSubMenu, const string &amp;pHelpString=&quot;&quot;, bool pResize=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>remove</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a6</anchor>
      <arglist>(unsigned pItemIndex, bool pResize=false, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>remove</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a7</anchor>
      <arglist>(const string &amp;pItemText, bool pResize=false, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>removeByReturnCode</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a8</anchor>
      <arglist>(long pReturnCode, bool pResize=false, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeAllItems</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a9</anchor>
      <arglist>(bool pResize=false, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clear</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a10</anchor>
      <arglist>(bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>showModal</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a11</anchor>
      <arglist>(bool pShowSelf=true, bool pBringToTop=true, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>modalGetsKeypress</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a12</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>scrollItems</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a13</anchor>
      <arglist>(int pScrollAmt, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>scrollToTop</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a14</anchor>
      <arglist>(bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>scrollToBottom</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a15</anchor>
      <arglist>(bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setTopItem</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a16</anchor>
      <arglist>(unsigned pTopItem, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setTopItem</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a17</anchor>
      <arglist>(const string &amp;pItemText, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setBottomItem</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a18</anchor>
      <arglist>(unsigned pItemIndex, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>move</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a19</anchor>
      <arglist>(int pNewRow, int pNewCol, bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual unsigned</type>
      <name>numMenuItems</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a20</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>resize</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a21</anchor>
      <arglist>(int pNewHeight, int pNewWidth, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>drawMessage</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a22</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>show</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a23</anchor>
      <arglist>(bool pBringToTop=true, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>erase</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a24</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getSubWinWidth</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a25</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>getReturnCode</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a26</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>getReturnCode</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a27</anchor>
      <arglist>(unsigned pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>getReturnCode</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a28</anchor>
      <arglist>(const string &amp;pItemText) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getItemText</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a29</anchor>
      <arglist>(int pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>drawBorder</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a30</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleSelectability</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a31</anchor>
      <arglist>(unsigned pIndex, bool pSelectable)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleSelectability</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a32</anchor>
      <arglist>(const string &amp;pItemText, bool pSelectable)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setClearOnSearch</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a33</anchor>
      <arglist>(bool pClearOnSearch)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCaseSensitiveSearch</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a34</anchor>
      <arglist>(bool pCaseSensitiveSearch)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSearchKey</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a35</anchor>
      <arglist>(int pSearchKey)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAltPgUpKey</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a36</anchor>
      <arglist>(int pPgUpKey)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAltPgDownKey</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a37</anchor>
      <arglist>(int pPgDownKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setStatus</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a38</anchor>
      <arglist>(const string &amp;pStatus, bool pRefreshStatus=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>disableCustomStatus</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a39</anchor>
      <arglist>(bool pRefreshStatus=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxMenu &amp;</type>
      <name>operator=</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a40</anchor>
      <arglist>(const cxMenu &amp;pThatMenu)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>refreshMenuItems</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a41</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setItemTextByReturnCode</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a42</anchor>
      <arglist>(long pReturnCode, const string &amp;pItemText, bool pSetAll=false, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setItemTextByIndex</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a43</anchor>
      <arglist>(int pIndex, const string &amp;pItemText, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setBorderStyle</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a44</anchor>
      <arglist>(eBorderStyle pBorderStyle)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>itemExists</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a45</anchor>
      <arglist>(const string &amp;pItemText) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllowQuit</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a46</anchor>
      <arglist>(bool pAllowQuit)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getAllowQuit</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a47</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAllowExit</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a48</anchor>
      <arglist>(bool pAllowExit)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getAllowExit</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a49</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getIndexByReturnCode</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a50</anchor>
      <arglist>(long pReturnCode)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLoopStartFunction</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a51</anchor>
      <arglist>(funcPtr4 pFuncPtr, void *p1, void *p2, void *p3, void *p4, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLoopEndFunction</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a52</anchor>
      <arglist>(funcPtr4 pFuncPtr, void *p1, void *p2, void *p3, void *p4, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>runLoopStartFunction</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a53</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>runLoopEndFunction</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a54</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>cxMenuItemType</type>
      <name>getItemType</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a55</anchor>
      <arglist>(unsigned pIndex) const </arglist>
    </member>
    <member kind="function">
      <type>cxMenuItemType</type>
      <name>getItemType</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a56</anchor>
      <arglist>(const string &amp;pItemText) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setWrapping</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a57</anchor>
      <arglist>(bool pWrap)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getWrapping</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a58</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setWaitForInputIfEmpty</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a59</anchor>
      <arglist>(bool pWaitForInputIfEmpty)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getWaitForInputIfEmpty</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a60</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getCurrentMenuItem</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a61</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setExitWhenLeaveFirst</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a62</anchor>
      <arglist>(bool pExitWhenLeaveFirst)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getExitWhenLeaveFirst</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a63</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setExitWhenLeaveLast</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a64</anchor>
      <arglist>(bool pExitWhenLeaveLast)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getExitWhenLeaveLast</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>a65</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>copyCxMenuStuff</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>b0</anchor>
      <arglist>(const cxMenu *pThatMenu)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>int</type>
      <name>subWinTop</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>b1</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>int</type>
      <name>subWinLeft</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>b2</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>long</type>
      <name>doInputLoop</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>b3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>setReturnCode</name>
      <anchorfile>classcxMenu.html</anchorfile>
      <anchor>b4</anchor>
      <arglist>(const long &amp;pReturnCode)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxMessageDialog</name>
    <filename>classcxMessageDialog.html</filename>
    <base>cxDialog</base>
    <member kind="function">
      <type></type>
      <name>cxMessageDialog</name>
      <anchorfile>classcxMessageDialog.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(cxWindow *pParentWindow=NULL, int pRow=0, int pCol=0, int pHeight=DEFAULT_HEIGHT, int pWidth=DEFAULT_WIDTH, const string &amp;pTitle=&quot;&quot;, const string &amp;pMessage=&quot;&quot;, long pStyle=cxOK|cxCANCEL, const string &amp;pStatus=&quot;&quot;)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxMessageDialog</name>
      <anchorfile>classcxMessageDialog.html</anchorfile>
      <anchor>a1</anchor>
      <arglist>(cxWindow *pParentWindow, const string &amp;pTitle, const string &amp;pMessage)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxMessageDialog</name>
      <anchorfile>classcxMessageDialog.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>(const cxMessageDialog &amp;pThatDialog)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~cxMessageDialog</name>
      <anchorfile>classcxMessageDialog.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>showModal</name>
      <anchorfile>classcxMessageDialog.html</anchorfile>
      <anchor>a4</anchor>
      <arglist>(bool pShowSelf=true, bool pBringToTop=true, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>hide</name>
      <anchorfile>classcxMessageDialog.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>(bool pHideSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>unhide</name>
      <anchorfile>classcxMessageDialog.html</anchorfile>
      <anchor>a6</anchor>
      <arglist>(bool pUnhideSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>move</name>
      <anchorfile>classcxMessageDialog.html</anchorfile>
      <anchor>a7</anchor>
      <arglist>(int pNewRow, int pNewCol, bool pRefresh=true)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>long</type>
      <name>doInputLoop</name>
      <anchorfile>classcxMessageDialog.html</anchorfile>
      <anchor>b0</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxMultiForm</name>
    <filename>classcxMultiForm.html</filename>
    <base>cxForm</base>
    <member kind="function">
      <type></type>
      <name>cxMultiForm</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(cxWindow *pParentWindow=NULL, int pRow=0, int pCol=0, int pHeight=DEFAULT_HEIGHT, int pWidth=DEFAULT_WIDTH, const string &amp;pTitle=&quot;&quot;, eBorderStyle pBorderStyle=eBS_SINGLE_LINE, cxWindow *pExtTitleWindow=NULL, cxWindow *pExtStatusWindow=NULL, bool pAutoExit=false, bool pStacked=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxMultiForm</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a1</anchor>
      <arglist>(const cxMultiForm &amp;pThatMultiForm)</arglist>
    </member>
    <member kind="function">
      <type>cxMultiForm &amp;</type>
      <name>operator=</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>(const cxMultiForm &amp;pThatMultiForm)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxForm *</type>
      <name>appendForm</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a4</anchor>
      <arglist>(int pRow, int pCol, int pHeight, int pWidth, const string &amp;pTitle=&quot;&quot;, eBorderStyle pBorderStyle=eBS_NOBORDER, bool pStacked=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>appendForm</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>(cxForm *pForm, int pRow, int pCol, bool *pMoved=NULL)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>appendForm</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a6</anchor>
      <arglist>(cxForm *pForm)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxForm *</type>
      <name>getForm</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a7</anchor>
      <arglist>(unsigned pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxForm *</type>
      <name>getForm</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a8</anchor>
      <arglist>(const string &amp;pTitle) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>show</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a9</anchor>
      <arglist>(bool pBringToTop=false, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>showModal</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a10</anchor>
      <arglist>(bool pShowSelf=true, bool pBringToTop=false, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>showAllSubforms</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a11</anchor>
      <arglist>(bool pBringToTop=true, bool pSkipCurrentForm=false) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>removeSubform</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a12</anchor>
      <arglist>(unsigned pIndex)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>removeSubform</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a13</anchor>
      <arglist>(const string &amp;pTitle)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getValue</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a14</anchor>
      <arglist>(unsigned pFormIndex, int pInputIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getValue</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a15</anchor>
      <arglist>(unsigned pFormIndex, const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getValue</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a16</anchor>
      <arglist>(const string &amp;pTitle, int pInputIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getValue</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a17</anchor>
      <arglist>(const string &amp;pTitle, const string &amp;pLabel, bool pIsLabel=true) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setValue</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a18</anchor>
      <arglist>(unsigned pFormIndex, int pInputIndex, const string &amp;pValue, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setValue</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a19</anchor>
      <arglist>(unsigned pFormIndex, const string &amp;pLabel, const string &amp;pValue, bool pIsLabel=true, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setValue</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a20</anchor>
      <arglist>(const string &amp;pTitle, int pInputIndex, const string &amp;pValue, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setValue</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a21</anchor>
      <arglist>(const string &amp;pTitle, const string &amp;pLabel, const string &amp;pValue, bool pIsLabel=true, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setValue</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a22</anchor>
      <arglist>(int pIndex, const string &amp;pValue, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setValue</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a23</anchor>
      <arglist>(const string &amp;pLabel, const string &amp;pValue, bool pIsLabel=true, bool pRefresh=false)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>numSubforms</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a24</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getLastKey</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a25</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hasEditableSubforms</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a26</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>move</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a27</anchor>
      <arglist>(int pNewRow, int pNewCol, bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>hide</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a28</anchor>
      <arglist>(bool pHideSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>unhide</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a29</anchor>
      <arglist>(bool pUnhideSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a30</anchor>
      <arglist>(int pFunctionKey, funcPtr4 pFieldFunction, void *p1, void *p2, void *p3, void *p4, bool pUseReturnVal=false, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a31</anchor>
      <arglist>(int pFunctionKey, funcPtr2 pFieldFunction, void *p1, void *p2, bool pUseReturnVal=false, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setCurrentSubform</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a32</anchor>
      <arglist>(int pIndex)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setCurrentSubform</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a33</anchor>
      <arglist>(const string &amp;pTitle)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setCurrentSubformByPtr</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a34</anchor>
      <arglist>(cxForm *pForm)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setSubformFocus</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a35</anchor>
      <arglist>(int pIndex)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setSubformFocus</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a36</anchor>
      <arglist>(const string &amp;pTitle)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setSubformFocusByPtr</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a37</anchor>
      <arglist>(cxForm *pForm)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getCurrentForm</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a38</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getSubformIndex</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a39</anchor>
      <arglist>(cxForm *pForm) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasChanged</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a40</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setChanged</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a41</anchor>
      <arglist>(bool pDataChanged)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setSubformEnabled</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a42</anchor>
      <arglist>(unsigned pIndex, bool pEnabled)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setSubformEnabled</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a43</anchor>
      <arglist>(const string &amp;pTitle, bool pEnabled)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>subformIsEnabled</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a44</anchor>
      <arglist>(unsigned pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>subformIsEnabled</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a45</anchor>
      <arglist>(const string &amp;pTitle) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addQuitKey</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a46</anchor>
      <arglist>(int pKey, bool pRunOnLeaveFunction=true, bool pOverride=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeQuitKey</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a47</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addExitKey</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a48</anchor>
      <arglist>(int pKey, bool pRunOnLeaveFunction=true, bool pOverride=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeExitKey</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a49</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setDisableCursorOnShow</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a50</anchor>
      <arglist>(bool pDisableCursorOnShow)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clear</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a51</anchor>
      <arglist>(bool pRefresh=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAssumeMovingBackwards</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a52</anchor>
      <arglist>(bool pAssumeMovingBackwards)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getAssumeMovingBackwards</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a53</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setEnabled</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>a54</anchor>
      <arglist>(bool pEnabled)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>copyCxMultiFormStuff</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>b0</anchor>
      <arglist>(const cxMultiForm *pThatMultiForm)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>long</type>
      <name>doInputLoop</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>b1</anchor>
      <arglist>(bool pShowSubforms)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>int</type>
      <name>lowestSubformRow</name>
      <anchorfile>classcxMultiForm.html</anchorfile>
      <anchor>b2</anchor>
      <arglist>(unsigned pIndex=0) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxMultiLineInput</name>
    <filename>classcxMultiLineInput.html</filename>
    <base>cxWindow</base>
    <base>cxWindow</base>
    <base>cxWindow</base>
    <member kind="function">
      <type></type>
      <name>cxMultiLineInput</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(cxWindow *pParentWindow=NULL, int pRow=0, int pCol=0, int pHeight=1, int pWidth=DEFAULT_WIDTH, const string &amp;pLabel=&quot;&quot;, eBorderStyle pBorderStyle=eBS_NOBORDER, eInputKinds pInputKind=eINPUT_NORMAL, string *pExtValue=NULL)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxMultiLineInput</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a1</anchor>
      <arglist>(const cxMultiLineInput &amp;pThatInput)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~cxMultiLineInput</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>cxMultiLineInput &amp;</type>
      <name>operator=</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>(const cxMultiLineInput &amp;pThatInput)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>show</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a4</anchor>
      <arglist>(bool pBringToTop=false, bool pShowSubwindows=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>showModal</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>(bool pShowSelf=true, bool pBringToTop=true, bool pShowSubwindows=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>hide</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a6</anchor>
      <arglist>(bool pHideSubwindows=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unhide</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a7</anchor>
      <arglist>(bool pUnhideSubwindows=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>erase</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a8</anchor>
      <arglist>(bool pEraseSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getLabel</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a9</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLabel</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a10</anchor>
      <arglist>(const string &amp;pLabel)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearValue</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a11</anchor>
      <arglist>(bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clear</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a12</anchor>
      <arglist>(bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getValue</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a13</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setValue</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a14</anchor>
      <arglist>(string pValue, bool pRefresh=false)</arglist>
    </member>
    <member kind="function">
      <type>string *</type>
      <name>getExtValue</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a15</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setExtValue</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a16</anchor>
      <arglist>(string *pExtVal, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setValidator</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a17</anchor>
      <arglist>(const string &amp;pValidator)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getValidatorStr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a18</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>textIsValid</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a19</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>textIsValid</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a20</anchor>
      <arglist>(const string &amp;pText) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getMasked</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a21</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleMasking</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a22</anchor>
      <arglist>(bool pMasking)</arglist>
    </member>
    <member kind="function">
      <type>char</type>
      <name>getMaskChar</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a23</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMaskChar</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a24</anchor>
      <arglist>(char pMaskChar)</arglist>
    </member>
    <member kind="function">
      <type>const string &amp;</type>
      <name>getName</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a25</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a26</anchor>
      <arglist>(const string &amp;pName)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>move</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a27</anchor>
      <arglist>(int pNewRow, int pNewCol, bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>resize</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a28</anchor>
      <arglist>(int pNewHeight, int pNewWidth, bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a29</anchor>
      <arglist>(int pFunctionKey, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a30</anchor>
      <arglist>(int pFunctionKey, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pExitAfterRun, bool pRunOnLeaveFunction, bool pRunValidator)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a31</anchor>
      <arglist>(int pFunctionKey, funcPtr2 pFunction, void *p1, void *p2, bool pUseVal, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a32</anchor>
      <arglist>(int pFunctionKey, funcPtr2 pFunction, void *p1, void *p2, bool pUseVal, bool pExitAfterRun, bool pRunOnLeaveFunction, bool pRunValidator)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>addSkipValidatorKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a33</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearSkipValidatorKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a34</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasSkipValidatorKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a35</anchor>
      <arglist>(int pKey) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a36</anchor>
      <arglist>(int pFunctionKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearKeyFunctions</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a37</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLabelAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a38</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getLabelAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a39</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLabelColor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a40</anchor>
      <arglist>(e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getLabelColor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a41</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLabelAttrAndColor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a42</anchor>
      <arglist>(attr_t pAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a43</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getValueAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a44</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>set&lt; attr_t &gt;</type>
      <name>getValueAttrs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a45</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueColor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a46</anchor>
      <arglist>(e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getValueColor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a47</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttrAndColor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a48</anchor>
      <arglist>(attr_t pAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setColors</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a49</anchor>
      <arglist>(e_cxColors pLabelColor, e_cxColors pValueColor)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getKind</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a50</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setKind</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a51</anchor>
      <arglist>(eInputKinds pInputKind)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addLabelAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a52</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a53</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttrs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a54</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addValueAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a55</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a56</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttrs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a57</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addAttrs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a58</anchor>
      <arglist>(attr_t pLabelAttr, attr_t pValueAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeAttrs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a59</anchor>
      <arglist>(attr_t pLabelAttr, attr_t pValueAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeAttrs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a60</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleCursor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a61</anchor>
      <arglist>(bool pShowCursor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValidatorFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a62</anchor>
      <arglist>(funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isFull</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a63</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setOnKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a64</anchor>
      <arglist>(funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleOnKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a65</anchor>
      <arglist>(bool pRunOnKeyFunction)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>onKeyFunctionEnabled</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a66</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setEnterAlwaysExits</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a67</anchor>
      <arglist>(bool pEnterAlwaysExits)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>enterAlwaysExits</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a68</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>maxValueLen</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a69</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasFocus</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a70</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setReadOnlyOnLeave</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a71</anchor>
      <arglist>(bool pReadOnlyOnLeave)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>canBeEditable</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a72</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCanBeEditable</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a73</anchor>
      <arglist>(bool pCanBeEditable)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setExitOnFull</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a74</anchor>
      <arglist>(bool pExitOnFull)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getExitOnFull</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a75</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setBorderStyle</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a76</anchor>
      <arglist>(eBorderStyle pBorderStyle)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isAbove</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a77</anchor>
      <arglist>(const cxWindow &amp;pThatWindow) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isBelow</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a78</anchor>
      <arglist>(const cxWindow &amp;pThatWindow) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>bringToTop</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a79</anchor>
      <arglist>(bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>refreshValue</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a80</anchor>
      <arglist>(bool pRefresh=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>trapNonAssignedFKeys</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a81</anchor>
      <arglist>(bool pTrapNonAssignedFKeys)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>runOnFocusFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a82</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>runFieldFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a83</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getInputLen</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a84</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addQuitKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a85</anchor>
      <arglist>(int pKey, bool pRunOnLeaveFunction=true, bool pOverride=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeQuitKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a86</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addExitKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a87</anchor>
      <arglist>(int pKey, bool pRunOnLeaveFunction=true, bool pOverride=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeExitKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a88</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>enableInputLoop</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a89</anchor>
      <arglist>(bool pDoInputLoop)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>inputLoopEnabled</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a90</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isEditable</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a91</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getAutoWrapAtBeginning</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a92</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAutoWrapAtBeginning</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a93</anchor>
      <arglist>(bool pWrapAtBeginning)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getSkipIfReadOnly</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a94</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSkipIfReadOnly</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a95</anchor>
      <arglist>(bool pSkipIfReadOnly)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setDisableCursorOnShow</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a96</anchor>
      <arglist>(bool pDisableCursorOnShow)</arglist>
    </member>
    <member kind="function">
      <type>cxForm *</type>
      <name>getParentForm</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a97</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setValidateOnReverse</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a98</anchor>
      <arglist>(bool pValidateOnReverse)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getValidateOnReverse</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a99</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLastKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a100</anchor>
      <arglist>(int pLastKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>modalGetsKeypress</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a101</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setEnabled</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a102</anchor>
      <arglist>(bool pEnabled)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>quitNow</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a103</anchor>
      <arglist>(bool pMoveForward)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>exitNow</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a104</anchor>
      <arglist>(bool pMoveForward)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>toggleValidatorFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a105</anchor>
      <arglist>(bool pRunValidatorFunction)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxWindow *</type>
      <name>getParent</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a106</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>ranFunctionAndShouldExit</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a107</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxMultiLineInput</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a108</anchor>
      <arglist>(cxWindow *pParentWindow=NULL, int pRow=0, int pCol=0, int pHeight=1, int pWidth=DEFAULT_WIDTH, const string &amp;pLabel=&quot;&quot;, eBorderStyle pBorderStyle=eBS_NOBORDER, eInputKinds pInputKind=eINPUT_NORMAL, string *pExtValue=NULL)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxMultiLineInput</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a109</anchor>
      <arglist>(const cxMultiLineInput &amp;pThatInput)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~cxMultiLineInput</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a110</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>cxMultiLineInput &amp;</type>
      <name>operator=</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a111</anchor>
      <arglist>(const cxMultiLineInput &amp;pThatInput)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>show</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a112</anchor>
      <arglist>(bool pBringToTop=false, bool pShowSubwindows=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>showModal</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a113</anchor>
      <arglist>(bool pShowSelf=true, bool pBringToTop=true, bool pShowSubwindows=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>hide</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a114</anchor>
      <arglist>(bool pHideSubwindows=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unhide</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a115</anchor>
      <arglist>(bool pUnhideSubwindows=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>erase</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a116</anchor>
      <arglist>(bool pEraseSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getLabel</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a117</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLabel</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a118</anchor>
      <arglist>(const string &amp;pLabel)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearValue</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a119</anchor>
      <arglist>(bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clear</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a120</anchor>
      <arglist>(bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getValue</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a121</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setValue</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a122</anchor>
      <arglist>(string pValue, bool pRefresh=false)</arglist>
    </member>
    <member kind="function">
      <type>string *</type>
      <name>getExtValue</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a123</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setExtValue</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a124</anchor>
      <arglist>(string *pExtVal, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setValidator</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a125</anchor>
      <arglist>(const string &amp;pValidator)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getValidatorStr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a126</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>textIsValid</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a127</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>textIsValid</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a128</anchor>
      <arglist>(const string &amp;pText) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getMasked</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a129</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleMasking</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a130</anchor>
      <arglist>(bool pMasking)</arglist>
    </member>
    <member kind="function">
      <type>char</type>
      <name>getMaskChar</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a131</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMaskChar</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a132</anchor>
      <arglist>(char pMaskChar)</arglist>
    </member>
    <member kind="function">
      <type>const string &amp;</type>
      <name>getName</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a133</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a134</anchor>
      <arglist>(const string &amp;pName)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>move</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a135</anchor>
      <arglist>(int pNewRow, int pNewCol, bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>resize</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a136</anchor>
      <arglist>(int pNewHeight, int pNewWidth, bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a137</anchor>
      <arglist>(int pFunctionKey, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a138</anchor>
      <arglist>(int pFunctionKey, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pExitAfterRun, bool pRunOnLeaveFunction, bool pRunValidator)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a139</anchor>
      <arglist>(int pFunctionKey, funcPtr2 pFunction, void *p1, void *p2, bool pUseVal, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a140</anchor>
      <arglist>(int pFunctionKey, funcPtr2 pFunction, void *p1, void *p2, bool pUseVal, bool pExitAfterRun, bool pRunOnLeaveFunction, bool pRunValidator)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>addSkipValidatorKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a141</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearSkipValidatorKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a142</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasSkipValidatorKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a143</anchor>
      <arglist>(int pKey) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a144</anchor>
      <arglist>(int pFunctionKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearKeyFunctions</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a145</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLabelAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a146</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getLabelAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a147</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLabelColor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a148</anchor>
      <arglist>(e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getLabelColor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a149</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLabelAttrAndColor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a150</anchor>
      <arglist>(attr_t pAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a151</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getValueAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a152</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>set&lt; attr_t &gt;</type>
      <name>getValueAttrs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a153</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueColor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a154</anchor>
      <arglist>(e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getValueColor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a155</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttrAndColor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a156</anchor>
      <arglist>(attr_t pAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setColors</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a157</anchor>
      <arglist>(e_cxColors pLabelColor, e_cxColors pValueColor)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getKind</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a158</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setKind</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a159</anchor>
      <arglist>(eInputKinds pInputKind)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addLabelAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a160</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a161</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttrs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a162</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addValueAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a163</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a164</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttrs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a165</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addAttrs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a166</anchor>
      <arglist>(attr_t pLabelAttr, attr_t pValueAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeAttrs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a167</anchor>
      <arglist>(attr_t pLabelAttr, attr_t pValueAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeAttrs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a168</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleCursor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a169</anchor>
      <arglist>(bool pShowCursor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValidatorFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a170</anchor>
      <arglist>(funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isFull</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a171</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setOnKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a172</anchor>
      <arglist>(funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleOnKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a173</anchor>
      <arglist>(bool pRunOnKeyFunction)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>onKeyFunctionEnabled</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a174</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setEnterAlwaysExits</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a175</anchor>
      <arglist>(bool pEnterAlwaysExits)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>enterAlwaysExits</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a176</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>maxValueLen</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a177</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasFocus</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a178</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setReadOnlyOnLeave</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a179</anchor>
      <arglist>(bool pReadOnlyOnLeave)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>canBeEditable</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a180</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCanBeEditable</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a181</anchor>
      <arglist>(bool pCanBeEditable)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setExitOnFull</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a182</anchor>
      <arglist>(bool pExitOnFull)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getExitOnFull</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a183</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setBorderStyle</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a184</anchor>
      <arglist>(eBorderStyle pBorderStyle)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isAbove</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a185</anchor>
      <arglist>(const cxWindow &amp;pThatWindow) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isBelow</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a186</anchor>
      <arglist>(const cxWindow &amp;pThatWindow) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>bringToTop</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a187</anchor>
      <arglist>(bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>refreshValue</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a188</anchor>
      <arglist>(bool pRefresh=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>trapNonAssignedFKeys</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a189</anchor>
      <arglist>(bool pTrapNonAssignedFKeys)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>runOnFocusFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a190</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>runFieldFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a191</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getInputLen</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a192</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addQuitKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a193</anchor>
      <arglist>(int pKey, bool pRunOnLeaveFunction=true, bool pOverride=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeQuitKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a194</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addExitKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a195</anchor>
      <arglist>(int pKey, bool pRunOnLeaveFunction=true, bool pOverride=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeExitKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a196</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>enableInputLoop</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a197</anchor>
      <arglist>(bool pDoInputLoop)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>inputLoopEnabled</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a198</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isEditable</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a199</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getAutoWrapAtBeginning</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a200</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAutoWrapAtBeginning</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a201</anchor>
      <arglist>(bool pWrapAtBeginning)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getSkipIfReadOnly</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a202</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSkipIfReadOnly</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a203</anchor>
      <arglist>(bool pSkipIfReadOnly)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setDisableCursorOnShow</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a204</anchor>
      <arglist>(bool pDisableCursorOnShow)</arglist>
    </member>
    <member kind="function">
      <type>cxForm *</type>
      <name>getParentForm</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a205</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setValidateOnReverse</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a206</anchor>
      <arglist>(bool pValidateOnReverse)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getValidateOnReverse</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a207</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLastKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a208</anchor>
      <arglist>(int pLastKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>modalGetsKeypress</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a209</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setEnabled</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a210</anchor>
      <arglist>(bool pEnabled)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>quitNow</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a211</anchor>
      <arglist>(bool pMoveForward)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>exitNow</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a212</anchor>
      <arglist>(bool pMoveForward)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>toggleValidatorFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a213</anchor>
      <arglist>(bool pRunValidatorFunction)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxWindow *</type>
      <name>getParent</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a214</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>ranFunctionAndShouldExit</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a215</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxMultiLineInput</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a216</anchor>
      <arglist>(cxWindow *pParentWindow=NULL, int pRow=0, int pCol=0, int pHeight=1, int pWidth=DEFAULT_WIDTH, const string &amp;pLabel=&quot;&quot;, eBorderStyle pBorderStyle=eBS_NOBORDER, eInputKinds pInputKind=eINPUT_NORMAL, string *pExtValue=NULL)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxMultiLineInput</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a217</anchor>
      <arglist>(const cxMultiLineInput &amp;pThatInput)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~cxMultiLineInput</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a218</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>cxMultiLineInput &amp;</type>
      <name>operator=</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a219</anchor>
      <arglist>(const cxMultiLineInput &amp;pThatInput)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>show</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a220</anchor>
      <arglist>(bool pBringToTop=false, bool pShowSubwindows=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>showModal</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a221</anchor>
      <arglist>(bool pShowSelf=true, bool pBringToTop=true, bool pShowSubwindows=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>hide</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a222</anchor>
      <arglist>(bool pHideSubwindows=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unhide</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a223</anchor>
      <arglist>(bool pUnhideSubwindows=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>erase</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a224</anchor>
      <arglist>(bool pEraseSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getLabel</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a225</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLabel</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a226</anchor>
      <arglist>(const string &amp;pLabel)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearValue</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a227</anchor>
      <arglist>(bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clear</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a228</anchor>
      <arglist>(bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getValue</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a229</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setValue</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a230</anchor>
      <arglist>(string pValue, bool pRefresh=false)</arglist>
    </member>
    <member kind="function">
      <type>string *</type>
      <name>getExtValue</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a231</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setExtValue</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a232</anchor>
      <arglist>(string *pExtVal, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setValidator</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a233</anchor>
      <arglist>(const string &amp;pValidator)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getValidatorStr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a234</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>textIsValid</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a235</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>textIsValid</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a236</anchor>
      <arglist>(const string &amp;pText) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getMasked</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a237</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleMasking</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a238</anchor>
      <arglist>(bool pMasking)</arglist>
    </member>
    <member kind="function">
      <type>char</type>
      <name>getMaskChar</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a239</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMaskChar</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a240</anchor>
      <arglist>(char pMaskChar)</arglist>
    </member>
    <member kind="function">
      <type>const string &amp;</type>
      <name>getName</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a241</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a242</anchor>
      <arglist>(const string &amp;pName)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>move</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a243</anchor>
      <arglist>(int pNewRow, int pNewCol, bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>resize</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a244</anchor>
      <arglist>(int pNewHeight, int pNewWidth, bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a245</anchor>
      <arglist>(int pFunctionKey, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a246</anchor>
      <arglist>(int pFunctionKey, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal, bool pExitAfterRun, bool pRunOnLeaveFunction, bool pRunValidator)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a247</anchor>
      <arglist>(int pFunctionKey, funcPtr2 pFunction, void *p1, void *p2, bool pUseVal, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a248</anchor>
      <arglist>(int pFunctionKey, funcPtr2 pFunction, void *p1, void *p2, bool pUseVal, bool pExitAfterRun, bool pRunOnLeaveFunction, bool pRunValidator)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>addSkipValidatorKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a249</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearSkipValidatorKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a250</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasSkipValidatorKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a251</anchor>
      <arglist>(int pKey) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a252</anchor>
      <arglist>(int pFunctionKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearKeyFunctions</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a253</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLabelAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a254</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getLabelAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a255</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLabelColor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a256</anchor>
      <arglist>(e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getLabelColor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a257</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLabelAttrAndColor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a258</anchor>
      <arglist>(attr_t pAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a259</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getValueAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a260</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>set&lt; attr_t &gt;</type>
      <name>getValueAttrs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a261</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueColor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a262</anchor>
      <arglist>(e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getValueColor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a263</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValueAttrAndColor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a264</anchor>
      <arglist>(attr_t pAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setColors</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a265</anchor>
      <arglist>(e_cxColors pLabelColor, e_cxColors pValueColor)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getKind</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a266</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setKind</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a267</anchor>
      <arglist>(eInputKinds pInputKind)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addLabelAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a268</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a269</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeLabelAttrs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a270</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addValueAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a271</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttr</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a272</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeValueAttrs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a273</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addAttrs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a274</anchor>
      <arglist>(attr_t pLabelAttr, attr_t pValueAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeAttrs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a275</anchor>
      <arglist>(attr_t pLabelAttr, attr_t pValueAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeAttrs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a276</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleCursor</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a277</anchor>
      <arglist>(bool pShowCursor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setValidatorFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a278</anchor>
      <arglist>(funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isFull</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a279</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setOnKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a280</anchor>
      <arglist>(funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleOnKeyFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a281</anchor>
      <arglist>(bool pRunOnKeyFunction)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>onKeyFunctionEnabled</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a282</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setEnterAlwaysExits</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a283</anchor>
      <arglist>(bool pEnterAlwaysExits)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>enterAlwaysExits</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a284</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>maxValueLen</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a285</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasFocus</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a286</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setReadOnlyOnLeave</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a287</anchor>
      <arglist>(bool pReadOnlyOnLeave)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>canBeEditable</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a288</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCanBeEditable</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a289</anchor>
      <arglist>(bool pCanBeEditable)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setExitOnFull</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a290</anchor>
      <arglist>(bool pExitOnFull)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getExitOnFull</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a291</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setBorderStyle</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a292</anchor>
      <arglist>(eBorderStyle pBorderStyle)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isAbove</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a293</anchor>
      <arglist>(const cxWindow &amp;pThatWindow) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isBelow</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a294</anchor>
      <arglist>(const cxWindow &amp;pThatWindow) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>bringToTop</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a295</anchor>
      <arglist>(bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>refreshValue</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a296</anchor>
      <arglist>(bool pRefresh=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>trapNonAssignedFKeys</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a297</anchor>
      <arglist>(bool pTrapNonAssignedFKeys)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>runOnFocusFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a298</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>runFieldFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a299</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getInputLen</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a300</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addQuitKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a301</anchor>
      <arglist>(int pKey, bool pRunOnLeaveFunction=true, bool pOverride=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeQuitKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a302</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addExitKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a303</anchor>
      <arglist>(int pKey, bool pRunOnLeaveFunction=true, bool pOverride=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeExitKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a304</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>enableInputLoop</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a305</anchor>
      <arglist>(bool pDoInputLoop)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>inputLoopEnabled</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a306</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isEditable</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a307</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getAutoWrapAtBeginning</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a308</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAutoWrapAtBeginning</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a309</anchor>
      <arglist>(bool pWrapAtBeginning)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getSkipIfReadOnly</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a310</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSkipIfReadOnly</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a311</anchor>
      <arglist>(bool pSkipIfReadOnly)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setDisableCursorOnShow</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a312</anchor>
      <arglist>(bool pDisableCursorOnShow)</arglist>
    </member>
    <member kind="function">
      <type>cxForm *</type>
      <name>getParentForm</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a313</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setValidateOnReverse</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a314</anchor>
      <arglist>(bool pValidateOnReverse)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getValidateOnReverse</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a315</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLastKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a316</anchor>
      <arglist>(int pLastKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>modalGetsKeypress</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a317</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setEnabled</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a318</anchor>
      <arglist>(bool pEnabled)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>quitNow</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a319</anchor>
      <arglist>(bool pMoveForward)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>exitNow</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a320</anchor>
      <arglist>(bool pMoveForward)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>toggleValidatorFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a321</anchor>
      <arglist>(bool pRunValidatorFunction)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxWindow *</type>
      <name>getParent</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a322</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>ranFunctionAndShouldExit</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>a323</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" static="yes">
      <type>static string</type>
      <name>clearInput</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>e0</anchor>
      <arglist>(void *theInput, void *unused)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static string</type>
      <name>clearInput</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>e1</anchor>
      <arglist>(void *theInput, void *unused)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static string</type>
      <name>clearInput</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>e2</anchor>
      <arglist>(void *theInput, void *unused)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>copyCxMultiLineInputStuff</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b0</anchor>
      <arglist>(const cxMultiLineInput *pThatInput)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>long</type>
      <name>doInputLoop</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b1</anchor>
      <arglist>(bool pShowInputs, bool &amp;pRunOnLeaveFunction)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>bool</type>
      <name>focusFunctionsWillRun</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b2</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>runFocusFunctions</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b3</anchor>
      <arglist>(bool pRunFocusFunctions)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setParentForm</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b4</anchor>
      <arglist>(cxForm *pParentForm)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>bool</type>
      <name>searchParentFormsForFKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b5</anchor>
      <arglist>(int pFunctionKey)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>freeInputs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>handleFunctionForLastKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b7</anchor>
      <arglist>(bool *pFunctionExists=NULL)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>copyCxMultiLineInputStuff</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b8</anchor>
      <arglist>(const cxMultiLineInput *pThatInput)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>long</type>
      <name>doInputLoop</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b9</anchor>
      <arglist>(bool pShowInputs, bool &amp;pRunOnLeaveFunction)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>bool</type>
      <name>focusFunctionsWillRun</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b10</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>runFocusFunctions</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b11</anchor>
      <arglist>(bool pRunFocusFunctions)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setParentForm</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b12</anchor>
      <arglist>(cxForm *pParentForm)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>bool</type>
      <name>searchParentFormsForFKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b13</anchor>
      <arglist>(int pFunctionKey)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>freeInputs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b14</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>handleFunctionForLastKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b15</anchor>
      <arglist>(bool *pFunctionExists=NULL)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>copyCxMultiLineInputStuff</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b16</anchor>
      <arglist>(const cxMultiLineInput *pThatInput)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>long</type>
      <name>doInputLoop</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b17</anchor>
      <arglist>(bool pShowInputs, bool &amp;pRunOnLeaveFunction)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>bool</type>
      <name>focusFunctionsWillRun</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b18</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>runFocusFunctions</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b19</anchor>
      <arglist>(bool pRunFocusFunctions)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setParentForm</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b20</anchor>
      <arglist>(cxForm *pParentForm)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>bool</type>
      <name>searchParentFormsForFKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b21</anchor>
      <arglist>(int pFunctionKey)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>freeInputs</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b22</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>handleFunctionForLastKey</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>b23</anchor>
      <arglist>(bool *pFunctionExists=NULL)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>mRunValidatorFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>p0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>cxFunction4</type>
      <name>mValidatorFunction</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>p1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>mRunFocusFunctions</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>p2</anchor>
      <arglist></arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>cxForm</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>n0</anchor>
      <arglist></arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>cxInput</name>
      <anchorfile>classcxMultiLineInput.html</anchorfile>
      <anchor>n1</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxObject</name>
    <filename>classcxObject.html</filename>
    <member kind="function">
      <type></type>
      <name>cxObject</name>
      <anchorfile>classcxObject.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~cxObject</name>
      <anchorfile>classcxObject.html</anchorfile>
      <anchor>a1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>UseColors</name>
      <anchorfile>classcxObject.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>(bool useIt)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>UseBeeps</name>
      <anchorfile>classcxObject.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>UseBeeps</name>
      <anchorfile>classcxObject.html</anchorfile>
      <anchor>a4</anchor>
      <arglist>(bool useIt)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>beep</name>
      <anchorfile>classcxObject.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>UseColors</name>
      <anchorfile>classcxObject.html</anchorfile>
      <anchor>e0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static bool</type>
      <name>useColors</name>
      <anchorfile>classcxObject.html</anchorfile>
      <anchor>t0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static bool</type>
      <name>useBeeps</name>
      <anchorfile>classcxObject.html</anchorfile>
      <anchor>t1</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxPanel</name>
    <filename>classcxPanel.html</filename>
    <base>cxWindow</base>
    <member kind="function">
      <type></type>
      <name>cxPanel</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(cxWindow *pParentWindow=NULL, int pRow=0, int pCol=0, int pHeight=DEFAULT_HEIGHT, int pWidth=DEFAULT_WIDTH, const string &amp;pTitle=&quot;&quot;, const string &amp;pMessage=&quot;&quot;, const string &amp;pStatus=&quot;&quot;, eBorderStyle pBorderStyle=eBS_NOBORDER, cxWindow *pExtTitleWindow=NULL, cxWindow *pExtStatusWindow=NULL, bool pMessageUnderlines=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>showModal</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>(bool pShowSelf=true, bool pBringToTop=true, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getExitOnLeaveLast</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setExitOnLeaveLast</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a4</anchor>
      <arglist>(bool pExitOnLeaveLast)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getExitOnLeaveFirst</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setExitOnLeaveFirst</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a6</anchor>
      <arglist>(bool pExitOnLeaveFirst)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual unsigned</type>
      <name>numWindows</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a7</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxWindow *</type>
      <name>getWindow</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a8</anchor>
      <arglist>(unsigned pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>append</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a9</anchor>
      <arglist>(cxWindow *pWindow)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>append</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a10</anchor>
      <arglist>(cxWindow *pWindow, int pRow, int pCol, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>delWindow</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a11</anchor>
      <arglist>(unsigned pIndex)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>delWindow</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a12</anchor>
      <arglist>(cxWindow *pWindow)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>windowIsInPanel</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a13</anchor>
      <arglist>(cxWindow *pWindow) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>move</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a14</anchor>
      <arglist>(int pNewRow, int pNewCol, bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setCurrentWindow</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a15</anchor>
      <arglist>(unsigned pIndex)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setCurrentWindow</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a16</anchor>
      <arglist>(const string &amp;pTitle)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setCurrentWindowByPtr</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a17</anchor>
      <arglist>(cxWindow *pWindow)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a18</anchor>
      <arglist>(int pFunctionKey, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseReturnVal=false, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a19</anchor>
      <arglist>(int pFunctionKey, funcPtr2 pFunction, void *p1, void *p2, bool pUseReturnVal=false, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearKeyFunction</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a20</anchor>
      <arglist>(int pFunctionKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getCurrentWindowIndex</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a21</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getWindowIndex</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a22</anchor>
      <arglist>(cxWindow *pWindow) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxWindow *</type>
      <name>getCurrentWindowPtr</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a23</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>show</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a24</anchor>
      <arglist>(bool pBringToTop=false, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getShowPanelWindow</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a25</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setShowPanelWindow</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a26</anchor>
      <arglist>(bool pShowPanelWindow)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getAllowExit</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a27</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setAllowExit</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a28</anchor>
      <arglist>(bool pAllowExit)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getAllowQuit</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a29</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setAllowQuit</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a30</anchor>
      <arglist>(bool pAllowQuit)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>windowIsEnabled</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a31</anchor>
      <arglist>(unsigned pIndex) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>enableWindow</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a32</anchor>
      <arglist>(unsigned pIndex, bool pEnabled=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clear</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a33</anchor>
      <arglist>(bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addQuitKey</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a34</anchor>
      <arglist>(int pKey, bool pRunOnLeaveFunction=true, bool pOverride=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeQuitKey</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a35</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addExitKey</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a36</anchor>
      <arglist>(int pKey, bool pRunOnLeaveFunction=true, bool pOverride=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeExitKey</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a37</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setEnabled</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a38</anchor>
      <arglist>(bool pEnabled)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>swap</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a39</anchor>
      <arglist>(int pWindow1Index, int pWindow2Index)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>swap</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>a40</anchor>
      <arglist>(cxWindow *pWindow1, cxWindow *pWindow2)</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>cxWindow</name>
      <anchorfile>classcxPanel.html</anchorfile>
      <anchor>n0</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxScrolledWindow</name>
    <filename>classcxScrolledWindow.html</filename>
    <base>cxWindow</base>
    <member kind="function">
      <type></type>
      <name>cxScrolledWindow</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(cxWindow *pParentWindow=NULL, int pRow=0, int pCol=0, int pHeight=DEFAULT_HEIGHT, int pWidth=DEFAULT_WIDTH, const string &amp;pTitle=&quot;&quot;, const string &amp;pMessage=&quot;&quot;, const string &amp;pStatus=&quot;&quot;, eBorderStyle pBorderStyle=eBS_SINGLE_LINE, cxWindow *pExtTitleWindow=NULL, cxWindow *pExtStatusWindow=NULL, bool pMessageUnderlines=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxScrolledWindow</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a1</anchor>
      <arglist>(cxWindow *pParentWindow, int pRow, int pCol, const string &amp;pTitle, const string &amp;pMessage, const string &amp;pStatus, cxWindow *pExtTitleWindow=NULL, cxWindow *pExtStatusWindow=NULL, bool pMessageUnderlines=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxScrolledWindow</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>(cxWindow *pParentWindow, const string &amp;pTitle, const string &amp;pMessage, const string &amp;pStatus, cxWindow *pExtTitleWindow=NULL, cxWindow *pExtStatusWindow=NULL, bool pMessageUnderlines=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxScrolledWindow</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>(cxWindow *pParentWindow, const string &amp;pMessage, const string &amp;pStatus, cxWindow *pExtTitleWindow=NULL, cxWindow *pExtStatusWindow=NULL, bool pMessageUnderlines=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxScrolledWindow</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a4</anchor>
      <arglist>(cxWindow *pParentWindow, const string &amp;pMessage, cxWindow *pExtTitleWindow=NULL, cxWindow *pExtStatusWindow=NULL, bool pMessageUnderlines=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxScrolledWindow</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>(cxWindow *pParentWindow, eHPosition pHPosition, const string &amp;pTitle, const string &amp;pMessage, const string &amp;pStatus, cxWindow *pExtTitleWindow=NULL, cxWindow *pExtStatusWindow=NULL, bool pMessageUnderlines=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxScrolledWindow</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a6</anchor>
      <arglist>(const cxScrolledWindow &amp;pThatWindow)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>show</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a8</anchor>
      <arglist>(bool pBringToTop=true, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>showModal</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a9</anchor>
      <arglist>(bool pShowSelf=true, bool pBringToTop=true, bool pShowSubwindows=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>scrollWin</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a10</anchor>
      <arglist>(int pVertScrollAmt, int pHorizScrollAmt, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>drawMessage</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a11</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>move</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a12</anchor>
      <arglist>(int pNewRow, int pNewCol, bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>resize</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a13</anchor>
      <arglist>(int pNewHeight, int pNewWidth, bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxScrolledWindow &amp;</type>
      <name>operator=</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a14</anchor>
      <arglist>(const cxScrolledWindow &amp;pThatWindow)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSearchKey</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a15</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setGoToKey</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a16</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>useLastKeyword</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a17</anchor>
      <arglist>(bool pUseLastKeyword)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAltPgUpKey</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a18</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAltPgDownKey</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a19</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLoopStartFunction</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a20</anchor>
      <arglist>(funcPtr4 pFuncPtr, void *p1, void *p2, void *p3, void *p4, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLoopEndFunction</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>a21</anchor>
      <arglist>(funcPtr4 pFuncPtr, void *p1, void *p2, void *p3, void *p4, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>reCreateSubWindow</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>b0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>init</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>b1</anchor>
      <arglist>(int pRow, int pCol, int pHeight, int pWidth, const string &amp;pTitle, string pMessage, const string &amp;pStatus, cxWindow *pParentWindow=NULL, bool pResizeVertically=false)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>copyCxScrolledWindowStuff</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>b2</anchor>
      <arglist>(const cxScrolledWindow *pThatWindow)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>int</type>
      <name>getLineNumber</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>b3</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>int</type>
      <name>getSubWinHeight</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>b4</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>int</type>
      <name>getSubWinWidth</name>
      <anchorfile>classcxScrolledWindow.html</anchorfile>
      <anchor>b5</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxTextValidator</name>
    <filename>classcxTextValidator.html</filename>
    <member kind="function">
      <type></type>
      <name>cxTextValidator</name>
      <anchorfile>classcxTextValidator.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(const string &amp;pTextStr=&quot;&quot;, const string &amp;pValidatorStr=&quot;&quot;)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~cxTextValidator</name>
      <anchorfile>classcxTextValidator.html</anchorfile>
      <anchor>a1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setTextStr</name>
      <anchorfile>classcxTextValidator.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>(const string &amp;pTextStr)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual const string &amp;</type>
      <name>getTextStr</name>
      <anchorfile>classcxTextValidator.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setValidatorStr</name>
      <anchorfile>classcxTextValidator.html</anchorfile>
      <anchor>a4</anchor>
      <arglist>(const string &amp;pValidatorStr)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual const string &amp;</type>
      <name>getValidatorStr</name>
      <anchorfile>classcxTextValidator.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>textIsValid</name>
      <anchorfile>classcxTextValidator.html</anchorfile>
      <anchor>a6</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>textIsValid</name>
      <anchorfile>classcxTextValidator.html</anchorfile>
      <anchor>a7</anchor>
      <arglist>(const string &amp;pTextStr) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>addImpliedChars</name>
      <anchorfile>classcxTextValidator.html</anchorfile>
      <anchor>a8</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>addImpliedChars</name>
      <anchorfile>classcxTextValidator.html</anchorfile>
      <anchor>a9</anchor>
      <arglist>(string &amp;pTextStr) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxTimer</name>
    <filename>classcxTimer.html</filename>
    <member kind="function">
      <type></type>
      <name>cxTimer</name>
      <anchorfile>classcxTimer.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(funcPtr4 pFuncPtr, void *p1, void *p2, void *p3, void *p4, unsigned pDelayMS)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>classcxTimer.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>stop</name>
      <anchorfile>classcxTimer.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxWidgetsException</name>
    <filename>classcxWidgetsException.html</filename>
    <member kind="function">
      <type></type>
      <name>cxWidgetsException</name>
      <anchorfile>classcxWidgetsException.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(const string &amp;pErrorMsg=&quot;&quot;)</arglist>
    </member>
    <member kind="function">
      <type>const string &amp;</type>
      <name>getErrorMsg</name>
      <anchorfile>classcxWidgetsException.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cxWindow</name>
    <filename>classcxWindow.html</filename>
    <base>cxObject</base>
    <member kind="function">
      <type></type>
      <name>cxWindow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(cxWindow *pParentWindow=NULL, int pRow=0, int pCol=0, int pHeight=DEFAULT_HEIGHT, int pWidth=DEFAULT_WIDTH, const string &amp;pTitle=&quot;&quot;, const string &amp;pMessage=&quot;&quot;, const string &amp;pStatus=&quot;&quot;, eBorderStyle pBorderStyle=eBS_SINGLE_LINE, cxWindow *pExtTitleWindow=NULL, cxWindow *pExtStatusWindow=NULL, bool pMessageUnderlines=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxWindow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a1</anchor>
      <arglist>(cxWindow *pParentWindow, int pRow, int pCol, const string &amp;pTitle, const string &amp;pMessage, const string &amp;pStatus, cxWindow *pExtTitleWindow=NULL, cxWindow *pExtStatusWindow=NULL, bool pMessageUnderlines=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxWindow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>(cxWindow *pParentWindow, const string &amp;pTitle, const string &amp;pMessage, const string &amp;pStatus, cxWindow *pExtTitleWindow=NULL, cxWindow *pExtStatusWindow=NULL, bool pMessageUnderlines=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxWindow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>(cxWindow *pParentWindow, const string &amp;pMessage, const string &amp;pStatus, cxWindow *pExtTitleWindow=NULL, cxWindow *pExtStatusWindow=NULL, bool pMessageUnderlines=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxWindow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a4</anchor>
      <arglist>(cxWindow *pParentWindow, const string &amp;pMessage, cxWindow *pExtTitleWindow=NULL, cxWindow *pExtStatusWindow=NULL, bool pMessageUnderlines=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxWindow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>(cxWindow *pParentWindow, eHPosition pHPosition, const string &amp;pTitle, const string &amp;pMessage, const string &amp;pStatus, cxWindow *pExtTitleWindow=NULL, cxWindow *pExtStatusWindow=NULL, bool pMessageUnderlines=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>cxWindow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a6</anchor>
      <arglist>(const cxWindow &amp;pThatWindow)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~cxWindow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>centerHoriz</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a8</anchor>
      <arglist>(bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>centerVert</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a9</anchor>
      <arglist>(bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>center</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a10</anchor>
      <arglist>(bool pRefresh=true)</arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>getTitle</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a11</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setTitle</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a12</anchor>
      <arglist>(const string &amp;pTitle, bool pRefreshTitle=true)</arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>getStatus</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a13</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setStatus</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a14</anchor>
      <arglist>(const string &amp;pStatus, bool pRefreshStatus=true)</arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>getMessage</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a15</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMessage</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a16</anchor>
      <arglist>(const string &amp;pMessage)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setHorizTitleAlignment</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a17</anchor>
      <arglist>(eHPosition pHAlignment)</arglist>
    </member>
    <member kind="function">
      <type>eHPosition</type>
      <name>getHorizTitleAlignment</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a18</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setHorizMessageAlignment</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a19</anchor>
      <arglist>(eHPosition pHAlignment)</arglist>
    </member>
    <member kind="function">
      <type>eHPosition</type>
      <name>getHorizMessageAlignment</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a20</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setHorizStatusAlignment</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a21</anchor>
      <arglist>(eHPosition pHAlignment)</arglist>
    </member>
    <member kind="function">
      <type>eHPosition</type>
      <name>getHorizStatusAlignment</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a22</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setExtTitleWindow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a23</anchor>
      <arglist>(cxWindow *pWindow, bool pRefreshTitle=true)</arglist>
    </member>
    <member kind="function">
      <type>cxWindow *</type>
      <name>getExtTitleWindow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a24</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setExtStatusWindow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a25</anchor>
      <arglist>(cxWindow *pWindow, bool pRefreshStatus=true)</arglist>
    </member>
    <member kind="function">
      <type>cxWindow *</type>
      <name>getExtStatusWindow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a26</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isHidden</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a27</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>show</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a28</anchor>
      <arglist>(bool pBringToTop=false, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>showModal</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a29</anchor>
      <arglist>(bool pShowSelf=true, bool pBringToTop=true, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>modalGetsKeypress</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a30</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>setFocus</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a31</anchor>
      <arglist>(bool pShowSelf=true, bool pBringToTop=true, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setFocusColors</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a32</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>unSetFocusColors</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a33</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>erase</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a34</anchor>
      <arglist>(bool pEraseSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>bringToTop</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a35</anchor>
      <arglist>(bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>bringToBottom</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a36</anchor>
      <arglist>(bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isOnTop</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a37</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isOnBottom</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a38</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isAbove</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a39</anchor>
      <arglist>(const cxWindow &amp;pThatWindow) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isBelow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a40</anchor>
      <arglist>(const cxWindow &amp;pThatWindow) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>hide</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a41</anchor>
      <arglist>(bool pHideSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>unhide</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a42</anchor>
      <arglist>(bool pUnhideSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>drawBorder</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a43</anchor>
      <arglist>(int pRow, int pCol, int pHeight, int pWidth)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>drawBorder</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a44</anchor>
      <arglist>(int pHeight, int pWidth)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>drawBorder</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a45</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>top</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a46</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>centerRow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a47</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bottom</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a48</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>left</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a49</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>centerCol</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a50</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>right</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a51</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>width</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a52</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>height</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a53</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setMessageColor</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a54</anchor>
      <arglist>(e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getMessageColor</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a55</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setTitleColor</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a56</anchor>
      <arglist>(e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getTitleColor</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a57</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setStatusColor</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a58</anchor>
      <arglist>(e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getStatusColor</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a59</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setBorderColor</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a60</anchor>
      <arglist>(e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getBorderColor</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a61</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>addAttr</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a62</anchor>
      <arglist>(e_WidgetItems pItem, attr_t pAttr)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>addMessageAttr</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a63</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setMessageAttr</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a64</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>getMessageAttrs</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a65</anchor>
      <arglist>(set&lt; attr_t &gt; &amp;pMessageAttrs) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>addTitleAttr</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a66</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setTitleAttr</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a67</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>getTitleAttrs</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a68</anchor>
      <arglist>(set&lt; attr_t &gt; &amp;pTitleAttrs) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>addStatusAttr</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a69</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setStatusAttr</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a70</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>getStatusAttrs</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a71</anchor>
      <arglist>(set&lt; attr_t &gt; &amp;pStatusAttrs) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>addBorderAttr</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a72</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setBorderAttr</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a73</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>getBorderAttrs</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a74</anchor>
      <arglist>(set&lt; attr_t &gt; &amp;pBorderAttrs) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>addHotkeyAttr</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a75</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setHotkeyAttr</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a76</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>getHotkeyAttrs</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a77</anchor>
      <arglist>(set&lt; attr_t &gt; &amp;pHotkeyAttrs) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setMessageAttr</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a78</anchor>
      <arglist>(attr_t pAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setTitleAttr</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a79</anchor>
      <arglist>(attr_t pAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setStatusAttr</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a80</anchor>
      <arglist>(attr_t pAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setBorderAttr</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a81</anchor>
      <arglist>(attr_t pAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>resize</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a82</anchor>
      <arglist>(int pNewHeight, int pNewWidth, bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>move</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a83</anchor>
      <arglist>(int pNewRow, int pNewCol, bool pRefresh=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>moveRelative</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a84</anchor>
      <arglist>(int pVerticalOffset, int pHorizOffset, bool pRefresh=true)</arglist>
    </member>
    <member kind="function">
      <type>unsigned</type>
      <name>numSubWindows</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a85</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSubWinMessage</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a86</anchor>
      <arglist>(unsigned pIndex, const string &amp;pMessage)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSubWinMessage</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a87</anchor>
      <arglist>(const string &amp;pTitle, const string &amp;pMessage)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasFocus</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a88</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setBorderStyle</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a89</anchor>
      <arglist>(eBorderStyle pBorderStyle)</arglist>
    </member>
    <member kind="function">
      <type>eBorderStyle</type>
      <name>getBorderStyle</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a90</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxWindow *</type>
      <name>getParent</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a91</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setParent</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a92</anchor>
      <arglist>(cxWindow *pNewParent)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dump</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a93</anchor>
      <arglist>(string &amp;pResult)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addMessageAttr</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a94</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeMessageAttr</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a95</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeMessageAttrs</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a96</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>showSubwindows</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a97</anchor>
      <arglist>(bool pBringToTop=true, bool pShowSubwindows=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual cxWindow &amp;</type>
      <name>operator=</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a98</anchor>
      <arglist>(const cxWindow &amp;pThatWindow)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>writeText</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a99</anchor>
      <arglist>(int pRow, int pCol, const string &amp;pText)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMessageUnderlines</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a100</anchor>
      <arglist>(bool pMessageUnderlines)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>usingMessageUnderlines</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a101</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isEnabled</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a102</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setEnabled</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a103</anchor>
      <arglist>(bool pEnabled)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setDisableCursorOnShow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a104</anchor>
      <arglist>(bool pDisableCursorOnShow)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getDisableCursorOnShow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a105</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getLastKey</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a106</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setLastKey</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a107</anchor>
      <arglist>(int pLastKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getChangeColorsOnFocus</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a108</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setChangeColorsOnFocus</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a109</anchor>
      <arglist>(bool pChangeColorsOnFocus)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setOnFocusFunction</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a110</anchor>
      <arglist>(funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseVal=false, bool pExitAfterRun=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setOnLeaveFunction</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a111</anchor>
      <arglist>(funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>runOnFocusFunction</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a112</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>runOnLeaveFunction</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a113</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>toggleOnFocusFunction</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a114</anchor>
      <arglist>(bool pRunOnFocus)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>toggleOnLeaveFunction</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a115</anchor>
      <arglist>(bool pRunOnLeave)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>onFocusFunctionEnabled</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a116</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>onLeaveFunctionEnabled</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a117</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual const cxFunction4 &amp;</type>
      <name>getOnFocusFunction</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a118</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual const cxFunction4 &amp;</type>
      <name>getOnLeaveFunction</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a119</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isModal</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a120</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a121</anchor>
      <arglist>(int pFunctionKey, funcPtr4 pFunction, void *p1, void *p2, void *p3, void *p4, bool pUseReturnVal=false, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>setKeyFunction</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a122</anchor>
      <arglist>(int pFunctionKey, funcPtr2 pFunction, void *p1, void *p2, bool pUseReturnVal=false, bool pExitAfterRun=false, bool pRunOnLeaveFunction=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearKeyFunction</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a123</anchor>
      <arglist>(int pFunctionKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearKeyFunctions</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a124</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasKeyFunction</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a125</anchor>
      <arglist>(int pFunctionKey) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>getFunctionKeyStrings</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a126</anchor>
      <arglist>(vector&lt; string &gt; &amp;pKeys) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>getFunctionKeys</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a127</anchor>
      <arglist>(vector&lt; int &gt; &amp;pKeys) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setShowSubwinsForward</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a128</anchor>
      <arglist>(bool pShowSubwinsForward)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getShowSubwinsForward</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a129</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setShowSelfBeforeSubwins</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a130</anchor>
      <arglist>(bool pShowSelfBeforeSubwins)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>getShowSelfBeforeSubwins</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a131</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual long</type>
      <name>getReturnCode</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a132</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addTitleString</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a133</anchor>
      <arglist>(int pHPos, const string &amp;pStr, bool pRefreshTitle=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getTitleString</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a134</anchor>
      <arglist>(int pHPos) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual map&lt; int, string &gt;</type>
      <name>getTitleStrings</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a135</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setTitleStrings</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a136</anchor>
      <arglist>(const map&lt; int, string &gt; &amp;pTitleStrings)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeTitleString</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a137</anchor>
      <arglist>(int pHPos)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeTitleStrings</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a138</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addStatusString</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a139</anchor>
      <arglist>(int pHPos, const string &amp;pStr, bool pRefreshStatus=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual string</type>
      <name>getStatusString</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a140</anchor>
      <arglist>(int pHPos) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual map&lt; int, string &gt;</type>
      <name>getStatusStrings</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a141</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setStatusStrings</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a142</anchor>
      <arglist>(const map&lt; int, string &gt; &amp;pStatusStrings)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeStatusString</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a143</anchor>
      <arglist>(int pHPos)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeStatusStrings</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a144</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addQuitKey</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a145</anchor>
      <arglist>(int pKey, bool pRunOnLeaveFunction=true, bool pOverride=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeQuitKey</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a146</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeQuitKeys</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a147</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addExitKey</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a148</anchor>
      <arglist>(int pKey, bool pRunOnLeaveFunction=true, bool pOverride=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeExitKey</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a149</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>removeExitKeys</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a150</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasExitKey</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a151</anchor>
      <arglist>(int pKey) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>hasQuitKey</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a152</anchor>
      <arglist>(int pKey) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clear</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a153</anchor>
      <arglist>(bool pRefresh=false)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>quitNow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a154</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>exitNow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a155</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>getQuitKeyStrings</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a156</anchor>
      <arglist>(vector&lt; string &gt; &amp;pKeys) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>getExitKeyStrings</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a157</anchor>
      <arglist>(vector&lt; string &gt; &amp;pKeys) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual map&lt; int, bool &gt;</type>
      <name>getQuitKeys</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a158</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual map&lt; int, bool &gt;</type>
      <name>getExitKeys</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a159</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleMessage</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a160</anchor>
      <arglist>(bool pDrawMessage)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>messageWillDraw</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a161</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>drawTitle</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a162</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>drawStatus</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a163</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>drawMessage</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a164</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setReturnCode</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>a165</anchor>
      <arglist>(const long &amp;pReturnCode)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>reCreatePanel</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>b0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>freeWindow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>b1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>init</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>b2</anchor>
      <arglist>(int pRow, int pCol, int pHeight, int pWidth, string pTitle, string pMessage, string pStatus, cxWindow *pParentWindow=NULL, bool pResizeVertically=true)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>removeAllSubwindows</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>b3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>addSubwindow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>b4</anchor>
      <arglist>(cxWindow *pSubWindow)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>removeSubWindow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>b5</anchor>
      <arglist>(const cxWindow *pSubWindow)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setElementColor</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>b6</anchor>
      <arglist>(short &amp;pColorPair, attr_t &amp;pElementAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>enableMessageAttrs</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>b7</anchor>
      <arglist>(WINDOW *pWin) const </arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>disableMessageAttrs</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>b8</anchor>
      <arglist>(WINDOW *pWin) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>copyCxWinStuff</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>b9</anchor>
      <arglist>(const cxWindow *pThatWindow)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>getRowColBasedOn</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>b10</anchor>
      <arglist>(cxWindow *pParentWindow, eHPosition pPosition, const string &amp;pTitle, const string &amp;pStatus, const string &amp;pMessage, int &amp;pRow, int &amp;pCol)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>handleFunctionForLastKey</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>b11</anchor>
      <arglist>(bool *pFunctionExists=NULL)</arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static void</type>
      <name>writeWithUnderlines</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>f0</anchor>
      <arglist>(WINDOW *pWindow, const string &amp;pText, const int &amp;pY, const int &amp;pStartX, const int &amp;pEndX, attr_t pHotkeyAttr=A_UNDERLINE)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>WINDOW *</type>
      <name>mWindow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>stringContainer</type>
      <name>mMessageLines</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>set&lt; attr_t &gt;</type>
      <name>mMessageAttrs</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>set&lt; attr_t &gt;</type>
      <name>mTitleAttrs</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>set&lt; attr_t &gt;</type>
      <name>mStatusAttrs</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>set&lt; attr_t &gt;</type>
      <name>mBorderAttrs</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>set&lt; attr_t &gt;</type>
      <name>mHotkeyAttrs</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>short</type>
      <name>mMessageColorPair</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>short</type>
      <name>mTitleColorPair</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>short</type>
      <name>mStatusColorPair</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>short</type>
      <name>mBorderColorPair</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p10</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>eHPosition</type>
      <name>mHorizTitleAlignment</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p11</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>eHPosition</type>
      <name>mHorizMessageAlignment</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p12</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>eHPosition</type>
      <name>mHorizStatusAlignment</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p13</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>mDrawMessage</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p14</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>cxFunction4</type>
      <name>mOnFocusFunction</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p15</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>cxFunction4</type>
      <name>mOnLeaveFunction</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p16</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>mIsModal</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p17</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>mLeaveNow</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p18</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>map&lt; int, cxFunction4 &gt;</type>
      <name>mFunction4s</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p19</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>map&lt; int, cxFunction2 &gt;</type>
      <name>mFunction2s</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p20</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>map&lt; int, bool &gt;</type>
      <name>mQuitKeys</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p21</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>map&lt; int, bool &gt;</type>
      <name>mExitKeys</name>
      <anchorfile>classcxWindow.html</anchorfile>
      <anchor>p22</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="dir">
    <name>/home/erico/prime/cxWidgets/src/backup/</name>
    <path>/home/erico/prime/cxWidgets/src/backup/</path>
    <filename>dir_000005.html</filename>
    <file>cxFunction.h</file>
  </compound>
  <compound kind="dir">
    <name>/home/erico/prime/cxWidgets/</name>
    <path>/home/erico/prime/cxWidgets/</path>
    <filename>dir_000003.html</filename>
    <dir>/home/erico/prime/cxWidgets/src/</dir>
  </compound>
  <compound kind="dir">
    <name>/home/erico/</name>
    <path>/home/erico/</path>
    <filename>dir_000001.html</filename>
    <dir>/home/erico/prime/</dir>
  </compound>
  <compound kind="dir">
    <name>/home/</name>
    <path>/home/</path>
    <filename>dir_000000.html</filename>
    <dir>/home/erico/</dir>
  </compound>
  <compound kind="dir">
    <name>/home/erico/prime/cxWidgets/src/new/</name>
    <path>/home/erico/prime/cxWidgets/src/new/</path>
    <filename>dir_000006.html</filename>
    <file>cxComboBox.cpp</file>
    <file>cxForm.cpp</file>
    <file>cxForm.h</file>
    <file>cxMultiLineInput.cpp</file>
    <file>cxMultiLineInput.h</file>
  </compound>
  <compound kind="dir">
    <name>/home/erico/prime/cxWidgets/src/old/</name>
    <path>/home/erico/prime/cxWidgets/src/old/</path>
    <filename>dir_000007.html</filename>
    <file>cxComboBox.cpp</file>
    <file>cxForm.cpp</file>
    <file>cxForm.h</file>
    <file>cxMultiLineInput.cpp</file>
    <file>cxMultiLineInput.h</file>
  </compound>
  <compound kind="dir">
    <name>/home/erico/prime/</name>
    <path>/home/erico/prime/</path>
    <filename>dir_000002.html</filename>
    <dir>/home/erico/prime/cxWidgets/</dir>
  </compound>
  <compound kind="dir">
    <name>/home/erico/prime/cxWidgets/src/</name>
    <path>/home/erico/prime/cxWidgets/src/</path>
    <filename>dir_000004.html</filename>
    <dir>/home/erico/prime/cxWidgets/src/backup/</dir>
    <dir>/home/erico/prime/cxWidgets/src/new/</dir>
    <dir>/home/erico/prime/cxWidgets/src/old/</dir>
    <file>cxApp.cpp</file>
    <file>cxApp.h</file>
    <file>cxBase.cpp</file>
    <file>cxBase.h</file>
    <file>cxBorderStyles.h</file>
    <file>cxButton.cpp</file>
    <file>cxButton.h</file>
    <file>cxColors.h</file>
    <file>cxComboBox.cpp</file>
    <file>cxComboBox.h</file>
    <file>cxDate.cpp</file>
    <file>cxDate.h</file>
    <file>cxDialog.cpp</file>
    <file>cxDialog.h</file>
    <file>cxFileViewer.cpp</file>
    <file>cxFileViewer.h</file>
    <file>cxForm.cpp</file>
    <file>cxForm.h</file>
    <file>cxFrame.h</file>
    <file>cxFunction.cpp</file>
    <file>cxFunction.h</file>
    <file>cxFunctionKeyCases.h</file>
    <file>cxInput.cpp</file>
    <file>cxInput.h</file>
    <file>cxInputKinds.h</file>
    <file>cxKeyDefines.h</file>
    <file>cxMenu.cpp</file>
    <file>cxMenu.h</file>
    <file>cxMenuItemType.h</file>
    <file>cxMessageDialog.cpp</file>
    <file>cxMessageDialog.h</file>
    <file>cxMessageDialogStyles.h</file>
    <file>cxMiscDefines.h</file>
    <file>cxMultiForm.cpp</file>
    <file>cxMultiForm.h</file>
    <file>cxMultiLineInput.cpp</file>
    <file>cxMultiLineInput.h</file>
    <file>cxObject.cpp</file>
    <file>cxObject.h</file>
    <file>cxPanel.cpp</file>
    <file>cxPanel.h</file>
    <file>cxPositions.h</file>
    <file>cxReturnCodes.h</file>
    <file>cxScrolledWindow.cpp</file>
    <file>cxScrolledWindow.h</file>
    <file>cxStringUtils.cpp</file>
    <file>cxStringUtils.h</file>
    <file>cxTextValidator.cpp</file>
    <file>cxTextValidator.h</file>
    <file>cxTimer.cpp</file>
    <file>cxTimer.h</file>
    <file>cxUnitTest.cpp</file>
    <file>cxValidators.cpp</file>
    <file>cxValidators.h</file>
    <file>cxWidgetItems.h</file>
    <file>cxWidgetsException.cpp</file>
    <file>cxWidgetsException.h</file>
    <file>cxWindow.cpp</file>
    <file>cxWindow.h</file>
    <file>keys.cpp</file>
    <file>test1.cpp</file>
    <file>testApp.cpp</file>
  </compound>
  <compound kind="namespace">
    <name>cxBase</name>
    <filename>namespacecxBase.html</filename>
    <member kind="function">
      <type>void</type>
      <name>init</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a12</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>cleanup</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a13</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>top</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a14</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>centerRow</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a15</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>bottom</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a16</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>left</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a17</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>centerCol</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a18</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>right</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a19</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>unsigned</type>
      <name>width</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a20</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>unsigned</type>
      <name>height</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a21</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>messageBox</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a22</anchor>
      <arglist>(int pRow, int pCol, int pHeight, int pWidth, const string &amp;pTitle, const string &amp;pMessage, const string &amp;pStatus=&quot;&quot;, eBorderStyle pBorderStyle=eBS_SINGLE_LINE)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>messageBox</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a23</anchor>
      <arglist>(int pRow, int pCol, const string &amp;pTitle, const string &amp;pMessage, const string &amp;pStatus)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>messageBox</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a24</anchor>
      <arglist>(int pRow, int pCol, const string &amp;pMessage)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>messageBox</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a25</anchor>
      <arglist>(const string &amp;pTitle, const string &amp;pMessage, const string &amp;pStatus)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>messageBox</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a26</anchor>
      <arglist>(const string &amp;pMessage, const string &amp;pStatus)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>messageBox</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a27</anchor>
      <arglist>(const string &amp;pMessage)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>messageDialog</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a28</anchor>
      <arglist>(const string &amp;pMessage)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>splash</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a29</anchor>
      <arglist>(const string &amp;pTitle, const string &amp;pMessage, int pSleep)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>splash</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a30</anchor>
      <arglist>(const string &amp;pMessage, int pSleep)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>eraseScreen</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a31</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>updateWindows</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a32</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isFunctionKey</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a33</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleCursor</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a34</anchor>
      <arglist>(bool pToggleCursor)</arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>getTermType</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a35</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>colorIsBright</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a36</anchor>
      <arglist>(e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>countHotkeys</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a37</anchor>
      <arglist>(const string &amp;pStr)</arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>stringWithoutUnderlineChars</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a38</anchor>
      <arglist>(const string &amp;pStr)</arglist>
    </member>
    <member kind="function">
      <type>unsigned</type>
      <name>visualStrLen</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a39</anchor>
      <arglist>(const string &amp;pStr)</arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>bringToTop</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a40</anchor>
      <arglist>(void *theWindow, void *unused)</arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>cxFormShowModal</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a41</anchor>
      <arglist>(void *theForm, void *unused)</arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>cxMenuShowModal</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a42</anchor>
      <arglist>(void *theMenu, void *unused)</arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>noOp</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a43</anchor>
      <arglist>(void *p1, void *p2)</arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>noOp</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a44</anchor>
      <arglist>(void *p1, void *p2, void *p3, void *p4)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>runSystemCmd</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a45</anchor>
      <arglist>(const string &amp;pCmd)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>writeText</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a46</anchor>
      <arglist>(int pRow, int pCol, const string &amp;pText, attr_t pAttr, e_cxColors pColor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>getHotkeyChars</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a47</anchor>
      <arglist>(const string &amp;pStr, set&lt; char &gt; &amp;pHotkeys, bool pConvertCase=false, bool pToUpper=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>showAllWindows</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a48</anchor>
      <arglist>(bool pBringToTop=false)</arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>getKeyStr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a49</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>getReturnCodeStr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a50</anchor>
      <arglist>(long pReturnCode)</arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>getInputKindStr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a51</anchor>
      <arglist>(eInputKinds pInputKind)</arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>getBorderStyleStr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a52</anchor>
      <arglist>(eBorderStyle pBorderStyle)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>signalHandler</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a53</anchor>
      <arglist>(int pSignal)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>promptYesNo</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a54</anchor>
      <arglist>(const string &amp;pMessage, const string &amp;pTitle=&quot;&quot;, eMessageDialogStyles pButtons=cxYES_NO)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>cxInitialized</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a55</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMessageAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a56</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getMessageAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a57</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setTitleAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a58</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getTitleAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a59</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setStatusAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a60</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getStatusAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a61</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setBorderAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a62</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getBorderAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a63</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setHotkeyAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a64</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getHotkeyAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a65</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLabelAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a66</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getLabelAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a67</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDataEditableAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a68</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getDataEditableAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a69</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDataReadonlyAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a70</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getDataReadonlyAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a71</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getMenuSelectionAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a72</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMenuSelectionAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a73</anchor>
      <arglist>(attr_t pAttr)</arglist>
    </member>
    <member kind="function">
      <type>attr_t</type>
      <name>getAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a74</anchor>
      <arglist>(const string &amp;pAttr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMenuClearKeywordKey</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a75</anchor>
      <arglist>(int pKey)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getMenuClearKeywordKey</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a76</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>mInitialized</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>set&lt; attr_t &gt;</type>
      <name>mMessageAttrs</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>set&lt; attr_t &gt;</type>
      <name>mTitleAttrs</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>set&lt; attr_t &gt;</type>
      <name>mStatusAttrs</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>set&lt; attr_t &gt;</type>
      <name>mBorderAttrs</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>set&lt; attr_t &gt;</type>
      <name>mHotkeyAttrs</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>attr_t</type>
      <name>mLabelAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>attr_t</type>
      <name>mDataEditableAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>attr_t</type>
      <name>mDataReadonlyAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>mMenuClearKeywordKey</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>attr_t</type>
      <name>mMenuSelectionAttr</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a10</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const string</type>
      <name>termType</name>
      <anchorfile>namespacecxBase.html</anchorfile>
      <anchor>a11</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>cxStringUtils</name>
    <filename>namespacecxStringUtils.html</filename>
    <member kind="function">
      <type>void</type>
      <name>SplitStringRegex</name>
      <anchorfile>namespacecxStringUtils.html</anchorfile>
      <anchor>a0</anchor>
      <arglist>(const string &amp;input, const string &amp;regex, vector&lt; string &gt; &amp;resultContainer)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>Find</name>
      <anchorfile>namespacecxStringUtils.html</anchorfile>
      <anchor>a1</anchor>
      <arglist>(const string &amp;input, const string &amp;regex, bool useBasicRegex)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Find</name>
      <anchorfile>namespacecxStringUtils.html</anchorfile>
      <anchor>a2</anchor>
      <arglist>(const string &amp;input, const string &amp;regex, string &amp;output)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>Replace</name>
      <anchorfile>namespacecxStringUtils.html</anchorfile>
      <anchor>a3</anchor>
      <arglist>(string &amp;srcStr, const string &amp;regexStr, const string &amp;replacementStr)</arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>replace</name>
      <anchorfile>namespacecxStringUtils.html</anchorfile>
      <anchor>a4</anchor>
      <arglist>(const string &amp;input, const string &amp;search, const string &amp;replace)</arglist>
    </member>
    <member kind="function">
      <type>T</type>
      <name>stringTo</name>
      <anchorfile>namespacecxStringUtils.html</anchorfile>
      <anchor>a5</anchor>
      <arglist>(const std::string &amp;s)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>test_stringTo</name>
      <anchorfile>namespacecxStringUtils.html</anchorfile>
      <anchor>a6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>toString</name>
      <anchorfile>namespacecxStringUtils.html</anchorfile>
      <anchor>a7</anchor>
      <arglist>(const T &amp;x)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>test_toString</name>
      <anchorfile>namespacecxStringUtils.html</anchorfile>
      <anchor>a8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>startsWithNumber</name>
      <anchorfile>namespacecxStringUtils.html</anchorfile>
      <anchor>a9</anchor>
      <arglist>(const string &amp;pStr)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isPrintable</name>
      <anchorfile>namespacecxStringUtils.html</anchorfile>
      <anchor>a10</anchor>
      <arglist>(const int &amp;pChar)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>indexOfLastCap</name>
      <anchorfile>namespacecxStringUtils.html</anchorfile>
      <anchor>a11</anchor>
      <arglist>(const string &amp;pStr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toUpper</name>
      <anchorfile>namespacecxStringUtils.html</anchorfile>
      <anchor>a12</anchor>
      <arglist>(string &amp;theString)</arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>stripNewlines</name>
      <anchorfile>namespacecxStringUtils.html</anchorfile>
      <anchor>a13</anchor>
      <arglist>(const string &amp;pStr)</arglist>
    </member>
    <member kind="function">
      <type>string</type>
      <name>replaceNewlines</name>
      <anchorfile>namespacecxStringUtils.html</anchorfile>
      <anchor>a14</anchor>
      <arglist>(const string &amp;pStr, const char &amp;pChar)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>insertUnderline</name>
      <anchorfile>namespacecxStringUtils.html</anchorfile>
      <anchor>a15</anchor>
      <arglist>(string &amp;pStr, char pChar, bool pAll=false)</arglist>
    </member>
  </compound>
</tagfile>
