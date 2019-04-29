/**
 * Clicks on an item.
 * @param {String} selector CSS selector of the item to click.
 * @param {String} targetedSelector If not null, the link click triggers a navigation that the 
 * test should allow to complete and wait for the target selector to be loaded. It timesout if the targeted element is not found. Possible to set timout.
 */
module.exports = async function(selector, targetedSelector) {
    // Element causes a navigation that we need to wait for (link click, form submit)
    const shouldWaitForNavigation = targetedSelector ? true : false
    if(shouldWaitForNavigation){
        await Promise.all([
            
            this.page.click(selector),
            this.page.waitForNavigation({waitUntil: 'domcontentloaded'}),
        ]);

    // Element does not cause a navigation event
    } else {               
        await this.page.click(selector);
    }
};