$header

/*
enum QTextBoundaryFinder::BoundaryType
*/
#define QTextBoundaryFinder_Grapheme                                 0
#define QTextBoundaryFinder_Word                                     1
#define QTextBoundaryFinder_Sentence                                 2
#define QTextBoundaryFinder_Line                                     3

/*
enum QTextBoundaryFinder::BoundaryReason
flags QTextBoundaryFinder::BoundaryReasons
*/
#define QTextBoundaryFinder_NotAtBoundary                            0
#define QTextBoundaryFinder_BreakOpportunity                         0x1f
#define QTextBoundaryFinder_StartOfItem                              0x20
#define QTextBoundaryFinder_EndOfItem                                0x40
#define QTextBoundaryFinder_MandatoryBreak                           0x80
#define QTextBoundaryFinder_SoftHyphen                               0x100
