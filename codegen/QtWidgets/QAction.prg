$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTIONGROUP
REQUEST QGRAPHICSWIDGET
REQUEST QWIDGET
REQUEST QVARIANT
REQUEST QFONT
REQUEST QICON
REQUEST QMENU
REQUEST QKEYSEQUENCE
#endif

CLASS QAction INHERIT QObject

   METHOD new
   METHOD delete
   METHOD actionGroup
   METHOD activate
   METHOD associatedGraphicsWidgets
   METHOD associatedWidgets
   METHOD autoRepeat
   METHOD data
   METHOD font
   METHOD icon
   METHOD iconText
   METHOD isCheckable
   METHOD isChecked
   METHOD isEnabled
   METHOD isIconVisibleInMenu
   METHOD isSeparator
   METHOD isVisible
   METHOD menu
   METHOD menuRole
   METHOD parentWidget
   METHOD priority
   METHOD setActionGroup
   METHOD setAutoRepeat
   METHOD setCheckable
   METHOD setData
   METHOD setFont
   METHOD setIcon
   METHOD setIconText
   METHOD setIconVisibleInMenu
   METHOD setMenu
   METHOD setMenuRole
   METHOD setPriority
   METHOD setSeparator
   METHOD setShortcut
   METHOD setShortcutContext
   METHOD setShortcuts
   METHOD setStatusTip
   METHOD setText
   METHOD setToolTip
   METHOD setWhatsThis
   METHOD shortcut
   METHOD shortcutContext
   METHOD shortcuts
   METHOD showStatusText
   METHOD statusTip
   METHOD text
   METHOD toolTip
   METHOD whatsThis
   METHOD hover
   METHOD setChecked
   METHOD setDisabled
   METHOD setEnabled
   METHOD setVisible
   METHOD toggle
   METHOD trigger

   METHOD onChanged
   METHOD onHovered
   METHOD onToggled
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAction ( QObject * parent )
*/
$internalConstructor=|new1|QObject *

/*
QAction ( const QString & text, QObject * parent )
*/
$internalConstructor=|new2|const QString &,QObject *

/*
QAction ( const QIcon & icon, const QString & text, QObject * parent )
*/
$internalConstructor=|new3|const QIcon &,const QString &,QObject *

//[1]QAction ( QObject * parent )
//[2]QAction ( const QString & text, QObject * parent )
//[3]QAction ( const QIcon & icon, const QString & text, QObject * parent )

HB_FUNC_STATIC( QACTION_NEW )
{
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QAction_new1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QAction_new2();
  }
  else if( ISNUMPAR(3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISQOBJECT(3) )
  {
    QAction_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QActionGroup * actionGroup () const
*/
$method=|QActionGroup *|actionGroup|

/*
void activate ( ActionEvent event )
*/
$method=|void|activate|QAction::ActionEvent

/*
QList<QGraphicsWidget *> associatedGraphicsWidgets () const
*/
$method=|QList<QGraphicsWidget *>|associatedGraphicsWidgets|

/*
QList<QWidget *> associatedWidgets () const
*/
$method=|QList<QWidget *>|associatedWidgets|

/*
bool autoRepeat () const
*/
$method=|bool|autoRepeat|

/*
QVariant data () const
*/
$method=|QVariant|data|

/*
QFont font () const
*/
$method=|QFont|font|

/*
QIcon icon () const
*/
$method=|QIcon|icon|

/*
QString iconText () const
*/
$method=|QString|iconText|

/*
bool isCheckable () const
*/
$method=|bool|isCheckable|

/*
bool isChecked () const
*/
$method=|bool|isChecked|

/*
bool isEnabled () const
*/
$method=|bool|isEnabled|

/*
bool isIconVisibleInMenu () const
*/
$method=|bool|isIconVisibleInMenu|

/*
bool isSeparator () const
*/
$method=|bool|isSeparator|

/*
bool isVisible () const
*/
$method=|bool|isVisible|

/*
QMenu * menu () const
*/
$method=|QMenu *|menu|

/*
MenuRole menuRole () const
*/
$method=|QAction::MenuRole|menuRole|

/*
QWidget * parentWidget () const
*/
$method=|QWidget *|parentWidget|

/*
Priority priority () const
*/
$method=|QAction::Priority|priority|

/*
void setActionGroup ( QActionGroup * group )
*/
$method=|void|setActionGroup|QActionGroup *

/*
void setAutoRepeat ( bool )
*/
$method=|void|setAutoRepeat|bool

/*
void setCheckable ( bool )
*/
$method=|void|setCheckable|bool

/*
void setData ( const QVariant & userData )
*/
$method=|void|setData|const QVariant &

/*
void setFont ( const QFont & font )
*/
$method=|void|setFont|const QFont &

/*
void setIcon ( const QIcon & icon )
*/
$method=|void|setIcon|const QIcon &

/*
void setIconText ( const QString & text )
*/
$method=|void|setIconText|const QString &

/*
void setIconVisibleInMenu ( bool visible )
*/
$method=|void|setIconVisibleInMenu|bool

/*
void setMenu ( QMenu * menu )
*/
$method=|void|setMenu|QMenu *

/*
void setMenuRole ( MenuRole menuRole )
*/
$method=|void|setMenuRole|QAction::MenuRole

/*
void setPriority ( Priority priority )
*/
$method=|void|setPriority|QAction::Priority

/*
void setSeparator ( bool b )
*/
$method=|void|setSeparator|bool

/*
void setShortcut ( const QKeySequence & shortcut )
*/
$method=|void|setShortcut|const QKeySequence &

/*
void setShortcutContext ( Qt::ShortcutContext context )
*/
$method=|void|setShortcutContext|Qt::ShortcutContext

/*
void setShortcuts ( const QList<QKeySequence> & shortcuts )
*/
$internalMethod=|void|setShortcuts,setShortcuts1|const QList<QKeySequence> &

/*
void setShortcuts ( QKeySequence::StandardKey key )
*/
$internalMethod=|void|setShortcuts,setShortcuts2|QKeySequence::StandardKey

//[1]void setShortcuts ( const QList<QKeySequence> & shortcuts )
//[2]void setShortcuts ( QKeySequence::StandardKey key )

HB_FUNC_STATIC( QACTION_SETSHORTCUTS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QAction_setShortcuts1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QAction_setShortcuts2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setStatusTip ( const QString & statusTip )
*/
$method=|void|setStatusTip|const QString &

/*
void setText ( const QString & text )
*/
$method=|void|setText|const QString &

/*
void setToolTip ( const QString & tip )
*/
$method=|void|setToolTip|const QString &

/*
void setWhatsThis ( const QString & what )
*/
$method=|void|setWhatsThis|const QString &

/*
QKeySequence shortcut () const
*/
$method=|QKeySequence|shortcut|

/*
Qt::ShortcutContext shortcutContext () const
*/
$method=|Qt::ShortcutContext|shortcutContext|

/*
QList<QKeySequence> shortcuts () const
*/
$method=|QList<QKeySequence>|shortcuts|

/*
bool showStatusText ( QWidget * widget = 0 )
*/
$meth=d|bool|showStatusText|QWidget *=0

/*
QString statusTip () const
*/
$method=|QString|statusTip|

/*
QString text () const
*/
$method=|QString|text|

/*
QString toolTip () const
*/
$method=|QString|toolTip|

/*
QString whatsThis () const
*/
$method=|QString|whatsThis|

/*
void hover ()
*/
$method=|void|hover|

/*
void setChecked ( bool )
*/
$method=|void|setChecked|bool

/*
void setDisabled ( bool b )
*/
$method=|void|setDisabled|bool

/*
void setEnabled ( bool )
*/
$method=|void|setEnabled|bool

/*
void setVisible ( bool )
*/
$method=|void|setVisible|bool

/*
void toggle ()
*/
$method=|void|toggle|

/*
void trigger ()
*/
$method=|void|trigger|

#pragma ENDDUMP
