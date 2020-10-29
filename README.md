# BQNcrate – <sub><sup>*A derivative approach to finding your way in [BQN](https://mlochbaum.github.io/BQN)*</sup></sub>

**BQNcrate is a search tool that seeks to answer *How do I…* questions in BQN.**

BQNcrate is a searchable collection of some short BQN phrases intended for both beginners and professionals, with content provided by the community. Knowledge of basic BQN syntax is a prerequisite. 

Note that Internet Explorer is not supported.

BQNcrate can also be used for [exercising your BQN skills](https://mlochbaum.github.io/bqncrate/quiz).

## Usage

*→ See also [the video introduction](https://dyalog.tv/Dyalog19/?v=r3owA7tfKE8) to APLcart.*

### Notes

- BQNcrate is for finding out *how to do* things, not for finding out, for example, what a symbol means or what a system function does. Please use the [language documentation](https://mlochbaum.github.io/BQN/doc/) for such purposes.

- The site may take some seconds to load due to the information being processed by the browser. Once ready, it does not require internet access any more.

- BQNcrate code works with BQN as specified. Existing implementations might not yet support this code.

### Interface

See [here](https://www.w3schools.com/tags/att_global_accesskey.asp#table2) how to use access-keys on your system.

- Hit [the input field](https://mlochbaum.github.io/bqncrate) at the top to type your query (access-key <kbd>Q</kbd> — for _**Q**uery_ — to re-focus)
- Hit the logo [⊔˜](https://mlochbaum.github.io/bqncrate) in the top left corner to go to the main page (access-key <kbd>M</kbd> — for _**M**ain_)
- Hit [<kbd>?</kbd>](#usage) in the top left corner to start a new query (access-key <kbd>E</kbd> — for _**E**xplain_)
- Hit [<kbd>×</kbd>](https://mlochbaum.github.io/bqncrate?q=) at the end of the input field to clear it (access-key <kbd>X</kbd> — for _e**x**punge_)
- Hit [<kbd>#</kbd>](https://mlochbaum.github.io/bqncrate?q=42) in the top right corner copy to the current search to the address bar (access-key <kbd>C</kbd> — for _**C**opy_)
- Hit [<kbd>◐</kbd>](https://mlochbaum.github.io/bqncrate?w) in the bottom right corner to cycle theme (access-keys <kbd>B</kbd> for **B**lack, <kbd>G</kbd> for **G**rey, <kbd>W</kbd> for **W**hite)
- Hit the Github icon at the lower right to come to the source code here (access-key <kbd>R</kbd> — for _**R**epository_)
- Hit the result list to enable movement keys for scrolling (access-key <kbd>Z</kbd>)

## URL API ("permalinks")

After clicking [<kbd>#</kbd>](https://mlochbaum.github.io/bqncrate?q=42) simply copy the current address from your browser's address bar to share the current query. Note that your current theme is intentionally not included, to avoid blinding the recipient. Note that the result for such a URL isn't permanent; it depends on BQNcrate's content at the time of usage.

### Manual construction

After [mlochbaum.github.io/bqncrate](https://mlochbaum.github.io/bqncrate/) you can add `?` and the following options, separated by `&` if you want both a theme and a query:

- [<code>w</code>](https://mlochbaum.github.io/bqncrate?w) select **w**hite theme
- [<code>b</code>](https://mlochbaum.github.io/bqncrate?b) select **b**lack theme
- [<code>q=<i>query</i></code>](https://mlochbaum.github.io/bqncrate?q=query) prepopulate the _Tell me about_ **q**uery field

For example, for a white interface looking for "find", use [mlochbaum.github.io/bqncrate?w&q=find](https://mlochbaum.github.io/bqncrate?w&q=find)
