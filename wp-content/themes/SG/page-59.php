<?php get_header(); ?>

			<div id="content">

				<div id="inner-content" class="wrap cf">

						<main id="main" class="m-all t-2of3 d-5of7 cf" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">

                            <div class="delivery">
                                <img class="delivery-img" src="<?php echo get_template_directory_uri() . '/library/images/delivery.png' ?>">

                                <?php if( get_field('delivery') ): ?>
                                    <p><?php the_field('delivery'); ?></p>
                                <?php endif; ?>
                            </div>

                            <div class="shop-article">
                                <h2><?php the_field('shop_title'); ?></h2>
                                <div class="shop-wrap">
                                    <?php 
                                    $link = get_field('shop_link');
                                    if( $link ): 
                                        $link_url = $link['url'];
                                        $link_title = $link['title'];
                                        $link_target = $link['target'] ? $link['target'] : '_self';
                                        ?>
                                        <a class="shop-link" href="<?php echo esc_url( $link_url ); ?>" target="<?php echo esc_attr( $link_target ); ?>"><?php echo esc_html( $link_title ); ?></a>
                                    <?php endif; ?>
                                </div>
                                <img class="background-img" class="shop-img" src="<?php the_field('shop_image'); ?>">
                            </div>

						</main>

				</div>

			</div>


<?php get_footer(); ?>
