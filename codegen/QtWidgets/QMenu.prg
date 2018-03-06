%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QRECT
REQUEST QICON
REQUEST QSIZE
#endif

CLASS QMenu INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD actionAt
   METHOD actionGeometry
   METHOD activeAction
   METHOD setActiveAction
   METHOD addAction
   METHOD addMenu
   METHOD addSeparator
   METHOD clear
   METHOD defaultAction
   METHOD setDefaultAction
   METHOD exec
   METHOD hideTearOffMenu
   METHOD icon
   METHOD setIcon
   METHOD insertMenu
   METHOD insertSeparator
   METHOD isEmpty
   METHOD isTearOffEnabled
   METHOD setTearOffEnabled
   METHOD isTearOffMenuVisible
   METHOD menuAction
   METHOD popup
   METHOD separatorsCollapsible
   METHOD setSeparatorsCollapsible
   METHOD title
   METHOD setTitle
   METHOD sizeHint
   METHOD wceMenu
   METHOD addSection
   METHOD insertSection
   METHOD setNoReplayFor
   METHOD setAsDockMenu
   METHOD toolTipsVisible
   METHOD setToolTipsVisible
   METHOD toNSMenu

   METHOD onAboutToHide
   METHOD onAboutToShow
   METHOD onHovered
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMenu ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=explicit QMenu ( const QString & title, QWidget * parent = 0 )
$internalConstructor=|new2|const QString &,QWidget *=0

//[1]explicit QMenu ( QWidget * parent = 0 )
//[2]explicit QMenu ( const QString & title, QWidget * parent = 0 )

HB_FUNC_STATIC( QMENU_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QMenu_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QMenu_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QAction * actionAt ( const QPoint & pt ) const
$method=|QAction *|actionAt|const QPoint &

$prototype=QRect actionGeometry ( QAction * act ) const
$method=|QRect|actionGeometry|QAction *

$prototype=QAction * activeAction () const
$method=|QAction *|activeAction|

$prototype=void setActiveAction ( QAction * act )
$method=|void|setActiveAction|QAction *

$prototype=QAction * addAction ( const QString & text )
$internalMethod=|QAction *|addAction,addAction1|const QString &

$prototype=QAction * addAction ( const QIcon & icon, const QString & text )
$internalMethod=|QAction *|addAction,addAction2|const QIcon &,const QString &

$prototype=QAction * addAction ( const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
$internalMethod=|QAction *|addAction,addAction3|const QString &,const QObject *,const char *,const QKeySequence &=0

$prototype=QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
$internalMethod=|QAction *|addAction,addAction4|const QIcon &,const QString &,const QObject *,const char *,const QKeySequence &=0

$prototype=void addAction ( QAction * action )
$internalMethod=|void|addAction,addAction5|QAction *

//[1]QAction * addAction ( const QString & text )
//[2]QAction * addAction ( const QIcon & icon, const QString & text )
//[3]QAction * addAction ( const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
//[4]QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
//[5]void addAction ( QAction * action )

HB_FUNC_STATIC( QMENU_ADDACTION )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenu_addAction1();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QMenu_addAction2();
  }
  else if( ISBETWEEN(3,4) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) && (ISQKEYSEQUENCE(4)||ISNIL(4)) )
  {
    QMenu_addAction3();
  }
  else if( ISBETWEEN(4,5) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISQOBJECT(3) && ISCHAR(4) && (ISQKEYSEQUENCE(5)||ISNIL(5)) )
  {
    QMenu_addAction4();
  }
  else if( ISNUMPAR(1) && ISQACTION(1) )
  {
    QMenu_addAction5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QAction * addMenu ( QMenu * menu )
$internalMethod=|QAction *|addMenu,addMenu1|QMenu *

$prototype=QMenu * addMenu ( const QString & title )
$internalMethod=|QMenu *|addMenu,addMenu2|const QString &

$prototype=QMenu * addMenu ( const QIcon & icon, const QString & title )
$internalMethod=|QMenu *|addMenu,addMenu3|const QIcon &,const QString &

//[1]QAction * addMenu ( QMenu * menu )
//[2]QMenu * addMenu ( const QString & title )
//[3]QMenu * addMenu ( const QIcon & icon, const QString & title )

HB_FUNC_STATIC( QMENU_ADDMENU )
{
  if( ISNUMPAR(1) && ISQMENU(1) )
  {
    QMenu_addMenu1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenu_addMenu2();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QMenu_addMenu3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QAction * addSeparator ()
$method=|QAction *|addSeparator|

$prototype=void clear ()
$method=|void|clear|

$prototype=QAction * defaultAction () const
$method=|QAction *|defaultAction|

$prototype=void setDefaultAction ( QAction * act )
$method=|void|setDefaultAction|QAction *

$prototype=QAction * exec ()
$internalMethod=|QAction *|exec,exec1|

$prototype=QAction * exec ( const QPoint & pos, QAction * at = 0 )
$internalMethod=|QAction *|exec,exec2|const QPoint &,QAction *=0

$prototype=static QAction *exec(QList<QAction*> actions, const QPoint &pos, QAction *at=0, QWidget *parent=0)
void QMenu_exec3 ()
{
  QList<QAction *> par1;
  PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
  int i1;
  int nLen1 = hb_arrayLen(aList1);
  for (i1=0;i1<nLen1;i1++)
  {
    par1 << (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
  }
  QAction * ptr = QMenu::exec ( par1, *PQPOINT(2), OPQACTION(3,0), OPQWIDGET(4,0) );
  _qt5xhb_createReturnClass ( ptr, "QACTION" );
}

//[1]QAction * exec ()
//[2]QAction * exec ( const QPoint & pos, QAction * at = 0 )
//[3]static QAction *exec(QList<QAction*> actions, const QPoint &pos, QAction *at=0, QWidget *parent=0)

HB_FUNC_STATIC( QMENU_EXEC )
{
  if( ISNUMPAR(0) )
  {
    QMenu_exec1();
  }
  else if( ISBETWEEN(1,2) && ISQPOINT(1) && ISOPTQACTION(2) )
  {
    QMenu_exec2();
  }
  else if( ISBETWEEN(2,4) && ISARRAY(1) && ISQPOINT(2) && ISOPTQACTION(3) && ISOPTQWIDGET(4) )
  {
    QMenu_exec3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void hideTearOffMenu ()
$method=|void|hideTearOffMenu|

$prototype=QIcon icon () const
$method=|QIcon|icon|

$prototype=void setIcon ( const QIcon & icon )
$method=|void|setIcon|const QIcon &

$prototype=QAction * insertMenu ( QAction * before, QMenu * menu )
$method=|QAction *|insertMenu|QAction *,QMenu *

$prototype=QAction * insertSeparator ( QAction * before )
$method=|QAction *|insertSeparator|QAction *

$prototype=bool isEmpty () const
$method=|bool|isEmpty|

$prototype=bool isTearOffEnabled () const
$method=|bool|isTearOffEnabled|

$prototype=void setTearOffEnabled ( bool )
$method=|void|setTearOffEnabled|bool

$prototype=bool isTearOffMenuVisible () const
$method=|bool|isTearOffMenuVisible|

$prototype=QAction * menuAction () const
$method=|QAction *|menuAction|

$prototype=void popup ( const QPoint & pos, QAction * at = 0 )
$method=|void|popup|const QPoint &,QAction *=0

$prototype=bool separatorsCollapsible () const
$method=|bool|separatorsCollapsible|

$prototype=void setSeparatorsCollapsible ( bool collapse )
$method=|void|setSeparatorsCollapsible|bool

$prototype=QString title () const
$method=|QString|title|

$prototype=void setTitle ( const QString & title )
$method=|void|setTitle|const QString &

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

$prototype=HMENU wceMenu ()
$method=|HMENU|wceMenu||#ifdef Q_OS_WINCE

$prototype=QAction * addSection ( const QString & text )
$internalMethod=5,1,0|QAction *|addSection,addSection1|const QString &

$prototype=QAction *addSection(const QIcon &icon, const QString &text)
$internalMethod=5,1,0|QAction *|addSection,addSection2|const QIcon &,const QString &

//[1]QAction *addSection(const QString &text)
//[2]QAction *addSection(const QIcon &icon, const QString &text)

HB_FUNC_STATIC( QMENU_ADDSECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenu_addSection1();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QMenu_addSection2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$prototype=QAction *insertSection(QAction *before, const QString &text)
$internalMethod=5,1,0|QAction *|insertSection,insertSection1|QAction *,const QString &

$prototype=QAction *insertSection(QAction *before, const QIcon &icon, const QString &text)
$internalMethod=5,1,0|QAction *|insertSection,insertSection2|QAction *,const QIcon &,const QString &

//[1]QAction *insertSection(QAction *before, const QString &text)
//[2]QAction *insertSection(QAction *before, const QIcon &icon, const QString &text)

HB_FUNC_STATIC( QMENU_INSERTSECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(2) && ISQACTION(1) && ISCHAR(2) )
  {
    QMenu_insertSection1();
  }
  else if( ISNUMPAR(3) && ISQACTION(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) )
  {
    QMenu_insertSection2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$prototype=void setNoReplayFor(QWidget *widget)
$method=|void|setNoReplayFor|QWidget *

$prototype=void setAsDockMenu()
$method=5,2,0|void|setAsDockMenu||#ifdef Q_OS_OSX

$prototype=bool toolTipsVisible() const
$method=5,1,0|bool|toolTipsVisible|

$prototype=void setToolTipsVisible(bool visible)
$method=5,1,0|void|setToolTipsVisible|bool

$prototype=NSMenu * QMenu::toNSMenu()
$method=5,2,0|NSMenu *|toNSMenu||#ifdef Q_OS_OSX

$connectSignalFunction

$signalMethod=|aboutToHide()
$signalMethod=|aboutToShow()
$signalMethod=|hovered(QAction*)
$signalMethod=|triggered(QAction*)

#pragma ENDDUMP
