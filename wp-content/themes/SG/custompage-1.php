<?php /* Template Name: Custom Page 1 */ ?>

<?php get_header(); ?>

			<div id="content">

				<div id="inner-content" class="wrap cf">

						<main id="main" class="m-all t-2of3 d-5of7 cf" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">

                        <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
                        <?php

                        // Check value exists.
                        if( have_rows('blank_page_content') ):

                            // Loop through rows.
                            while ( have_rows('blank_page_content') ) : the_row();

                                // Case: Paragraph layout.
                                if( get_row_layout() == 'text_image' ): ?>
                                <?php
                                    $text = get_sub_field('text');
                                    $image = get_sub_field('image');
                                ?>
                                    <div>
                                        <p><?php echo $text ?></p>
                                        <img src="<?php echo $image?>">
                                    </div>
                                <?php endif;

                            // End loop.
                            endwhile;

                        // No value.
                        else :
                            // Do something...
                        endif;

                        ?>

                        <?php endwhile; endif; ?>

						</main>

				</div>

			</div>

<?php get_footer(); ?>