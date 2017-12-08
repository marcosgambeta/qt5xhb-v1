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

$prototype=virtual QAction * actionAdjustSize () const
$method=|QAction *|actionAdjustSize|

$prototype=virtual QAction * actionBreakLayout () const
$method=|QAction *|actionBreakLayout|

$prototype=virtual QAction * actionCopy () const
$method=|QAction *|actionCopy|

$prototype=virtual QAction * actionCut () const
$method=|QAction *|actionCut|

$prototype=virtual QAction * actionDelete () const
$method=|QAction *|actionDelete|

$prototype=QAction * actionFormLayout () const
$method=|QAction *|actionFormLayout|

$prototype=virtual QAction * actionGridLayout () const
$method=|QAction *|actionGridLayout|

$prototype=virtual QAction * actionHorizontalLayout () const
$method=|QAction *|actionHorizontalLayout|

$prototype=virtual QAction * actionLower () const
$method=|QAction *|actionLower|

$prototype=virtual QAction * actionPaste () const
$method=|QAction *|actionPaste|

$prototype=virtual QAction * actionRaise () const
$method=|QAction *|actionRaise|

$prototype=virtual QAction * actionRedo () const
$method=|QAction *|actionRedo|

$prototype=virtual QAction * actionSelectAll () const
$method=|QAction *|actionSelectAll|

$prototype=QAction * actionSimplifyLayout () const
$method=|QAction *|actionSimplifyLayout|

$prototype=virtual QAction * actionSplitHorizontal () const
$method=|QAction *|actionSplitHorizontal|

$prototype=virtual QAction * actionSplitVertical () const
$method=|QAction *|actionSplitVertical|

$prototype=virtual QAction * actionUndo () const
$method=|QAction *|actionUndo|

$prototype=virtual QAction * actionVerticalLayout () const
$method=|QAction *|actionVerticalLayout|

$prototype=virtual QDesignerFormWindowInterface * activeFormWindow () const
$method=|QDesignerFormWindowInterface *|activeFormWindow|

$prototype=virtual QDesignerFormEditorInterface * core () const
$method=|QDesignerFormEditorInterface *|core|

$prototype=virtual QDesignerFormWindowInterface * createFormWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$method=|QDesignerFormWindowInterface *|createFormWindow|QWidget *=0,Qt::WindowFlags=0

$prototype=virtual QDesignerFormWindowInterface * formWindow ( int index ) const
$method=|QDesignerFormWindowInterface *|formWindow|int

$prototype=virtual int formWindowCount () const
$method=|int|formWindowCount|

$prototype=virtual void addFormWindow ( QDesignerFormWindowInterface * formWindow )
$method=|void|addFormWindow|QDesignerFormWindowInterface *

$prototype=virtual void removeFormWindow ( QDesignerFormWindowInterface * formWindow )
$method=|void|removeFormWindow|QDesignerFormWindowInterface *

$prototype=virtual void setActiveFormWindow ( QDesignerFormWindowInterface * formWindow )
$method=|void|setActiveFormWindow|QDesignerFormWindowInterface *

#pragma ENDDUMP
