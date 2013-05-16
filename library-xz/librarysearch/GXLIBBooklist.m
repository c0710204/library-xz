//
//  GXLIBBooklist.m
//  library-xz
//
//  Created by Apple on 13-5-17.
//  Copyright (c) 2013年 thephoenixorg. All rights reserved.
//

#import "GXLIBBooklist.h"

@interface GXLIBBooklist ()

@end

@implementation GXLIBBooklist

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSMutableURLRequest *ur=[[[NSMutableURLRequest alloc]initWithURL:[NSURL URLWithString:@"http://sslib.thephoenixorg.com/api/api.php?table=booklist"]]retain];
    NSData *res=[[NSURLConnection sendSynchronousRequest:ur returningResponse:nil error:nil]retain];
    NSString *_response=[[[NSString alloc]initWithData:res encoding:NSUTF8StringEncoding]retain];
    NSData *da=[[_response dataUsingEncoding:NSUTF8StringEncoding]retain];
    data=[[NSJSONSerialization JSONObjectWithData:da options:kNilOptions error:nil]retain];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGRect cellFram = CGRectMake(0 , 0, 320 ,150);
    static NSString *CellIdentifier = @"Cell";
    GXLIBbooklistCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        [[NSBundle mainBundle] loadNibNamed:@"GXLIBbooklistCell" owner:self options:nil];
        cell = self->loadedcell;
        cell.frame=cellFram;
        loadedcell = nil;
        NSDictionary *rowinfo=[[data objectAtIndex:indexPath.row]retain];
        cell.ISBN.text=[rowinfo objectForKey:@"ISBN"];
        cell.title.text=[rowinfo objectForKey:@"title"];
        cell.author.text=[rowinfo objectForKey:@"author"];
        cell.published.text=[rowinfo objectForKey:@"publisher"];
        [rowinfo release];
        
    }
    
    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
}

@end
