$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QDESIGNERFORMWINDOWINTERFACE
REQUEST QDESIGNERFORMEDITORINTERFACE
#endif

CLASS QDesignerFormWindowManagerInterface INHERIT QObject

   METHOD delete
   METHOD actionAdjustSize
   METHOD actionBreakLayout
   METHOD actionCopy
   METHOD actionCut
   METHOD actionDelete
   METHOD actionFormLayout
   METHOD actionGridLayout
   METHOD actionHorizontalLayout
   METHOD actionLower
   METHOD actionPaste
   METHOD actionRaise
   METHOD actionRedo
   METHOD actionSelectAll
   METHOD actionSimplifyLayout
   METHOD actionSplitHorizontal
   METHOD actionSplitVertical
   METHOD actionUndo
   METHOD actionVerticalLayout
   METHOD activeFormWindow
   METHOD core
   METHOD createFormWindow
   METHOD formWindow
   METHOD formWindowCount
   METHOD addFormWindow
   METHOD removeFormWindow
   METHOD setActiveFormWindow

   METHOD onActiveFormWindowChanged
   METHOD onFormWindowAdded
   METHOD onFormWindowRemoved

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QAction * actionAdjustSize () const
*/
$method=|QAction *|actionAdjustSize|

/*
virtual QAction * actionBreakLayout () const
*/
$method=|QAction *|actionBreakLayout|

/*
virtual QAction * actionCopy () const
*/
$method=|QAction *|actionCopy|

/*
virtual QAction * actionCut () const
*/
$method=|QAction *|actionCut|

/*
virtual QAction * actionDelete () const
*/
$method=|QAction *|actionDelete|

/*
QAction * actionFormLayout () const
*/
$method=|QAction *|actionFormLayout|

/*
virtual QAction * actionGridLayout () const
*/
$method=|QAction *|actionGridLayout|

/*
virtual QAction * actionHorizontalLayout () const
*/
$method=|QAction *|actionHorizontalLayout|

/*
virtual QAction * actionLower () const
*/
$method=|QAction *|actionLower|

/*
virtual QAction * actionPaste () const
*/
$method=|QAction *|actionPaste|

/*
virtual QAction * actionRaise () const
*/
$method=|QAction *|actionRaise|

/*
virtual QAction * actionRedo () const
*/
$method=|QAction *|actionRedo|

/*
virtual QAction * actionSelectAll () const
*/
$method=|QAction *|actionSelectAll|

/*
QAction * actionSimplifyLayout () const
*/
$method=|QAction *|actionSimplifyLayout|

/*
virtual QAction * actionSplitHorizontal () const
*/
$method=|QAction *|actionSplitHorizontal|

/*
virtual QAction * actionSplitVertical () const
*/
$method=|QAction *|actionSplitVertical|

/*
virtual QAction * actionUndo () const
*/
$method=|QAction *|actionUndo|

/*
virtual QAction * actionVerticalLayout () const
*/
$method=|QAction *|actionVerticalLayout|

/*
virtual QDesignerFormWindowInterface * activeFormWindow () const
*/
$method=|QDesignerFormWindowInterface *|activeFormWindow|

/*
virtual QDesignerFormEditorInterface * core () const
*/
$method=|QDesignerFormEditorInterface *|core|

/*
virtual QDesignerFormWindowInterface * createFormWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
$method=|QDesignerFormWindowInterface *|createFormWindow|QWidget *=0,Qt::WindowFlags=0

/*
virtual QDesignerFormWindowInterface * formWindow ( int index ) const
*/
$method=|QDesignerFormWindowInterface *|formWindow|int

/*
virtual int formWindowCount () const
*/
$method=|int|formWindowCount|

/*
virtual void addFormWindow ( QDesignerFormWindowInterface * formWindow )
*/
$method=|void|addFormWindow|QDesignerFormWindowInterface *

/*
virtual void removeFormWindow ( QDesignerFormWindowInterface * formWindow )
*/
$method=|void|removeFormWindow|QDesignerFormWindowInterface *

/*
virtual void setActiveFormWindow ( QDesignerFormWindowInterface * formWindow )
*/
$method=|void|setActiveFormWindow|QDesignerFormWindowInterface *

#pragma ENDDUMP
