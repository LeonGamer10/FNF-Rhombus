package funkin.ui.debug.charting.commands;

import funkin.data.song.SongData.SongNoteData;
import funkin.data.song.SongData.SongEventData;

/**
 * Command to set the selection to all notes and events in the chart editor.
 */
@:nullSafety
@:access(funkin.ui.debug.charting.ChartEditorState)
class SelectAllItemsCommand implements ChartEditorCommand
{
  var previousNoteSelection:Array<SongNoteData>;
  var previousEventSelection:Array<SongEventData>;

  public function new(?previousNoteSelection:Array<SongNoteData>, ?previousEventSelection:Array<SongEventData>)
  {
    this.previousNoteSelection = previousNoteSelection == null ? [] : previousNoteSelection;
    this.previousEventSelection = previousEventSelection == null ? [] : previousEventSelection;
  }

  public function execute(state:ChartEditorState):Void
  {
    state.currentNoteSelection = state.currentSongChartNoteData;
    state.currentEventSelection = state.currentSongChartEventData;

    state.noteDisplayDirty = true;
  }

  public function undo(state:ChartEditorState):Void
  {
    state.currentNoteSelection = previousNoteSelection;
    state.currentEventSelection = previousEventSelection;

    state.noteDisplayDirty = true;
  }

  public function toString():String
  {
    return 'Select All Items';
  }
}
