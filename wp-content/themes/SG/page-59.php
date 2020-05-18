<?php get_header(); ?>

			<div id="content">

				<div id="inner-content" class="wrap cf">

                        <main id="main" class="m-all t-2of3 d-5of7 cf" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">

                            <div id="row-one">

                                <div class="delivery">
                                    <img class="delivery-img" src="<?php echo get_template_directory_uri() . '/library/images/delivery.png' ?>">

                                    <?php if( get_field('delivery') ): ?>
                                        <p><?php the_field('delivery'); ?></p>
                                    <?php endif; ?>
                                </div>  

                                <!-- *** Shop *** -->
                                <?php

                                // check if the repeater field has rows of data
                                if( have_rows('article') ):

                                    // loop through the rows of data
                                    while ( have_rows('article') ) : the_row();
                                    $link = get_sub_field('article_link');
                                    $image = get_sub_field('article_image');

                                        // display a sub field value
                                        $link_url = $link['url'];
                                        $link_title = $link['title'];
                                        $link_target = $link['target'] ? $link['target'] : '_self';

                                    ?>
                                    <div class="shop" style="background-image: url(<?php the_sub_field('article_image'); ?>);">
                                        <div class="shop-wrap">
                                            <h2><?php echo get_sub_field('article_title'); ?></h2>
                                            <a class="shop-link" href="<?php echo esc_url( $link_url ); ?>" target="<?php echo esc_attr( $link_target ); ?>"><?php echo esc_html( $link_title ); ?></a>
                                        </div>
                                    </div>

                                    <?php

                                    endwhile;

                                else :

                                    // no rows found

                                endif;

                                ?>

                            </div> 
						</main>

				</div>

			</div>


<?php get_footer(); ?>
