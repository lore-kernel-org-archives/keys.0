Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4A224BBF8
	for <keys@linux.kernel.org>; Thu, 13 Feb 2025 20:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739478118; cv=none; b=YU48rCKj7WnLZE+PJniLi/+i6lEiPL3jIm73hfl4h8Q29YReQm5x8FWWbFvJ+fVx5QxtdD5BklGLObHuxTZlS97FBMLmXBKWmdgvNgMMQTOYsg56hHfVzddplEbDtxkcMDd4DjTw9V7Zse2iNkDvftj8NT/wPF3cINXdVWnJbhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739478118; c=relaxed/simple;
	bh=ZK/AyYlG5Uy3wFT7HiFh1OpPi4sAvrFoPu9yYv3SUwc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bp9txeBDgFdGTfr4u8qKn07Jk3Uaj2qxZWI0MIKk2jmayY0ynvpHSgACU600rdKMc3v0jei4T7Ff6PUurcQ+cK3G4mkI8VmdOFFD6PGs4GvNCNge7RsdEn2QMTqil+gjgNmh0DX32cN6MF1y+YTJapNlLkgi6s0GRARsp4uH9Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=i2+nNcVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="i2+nNcVF"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0514DC4CED1;
	Thu, 13 Feb 2025 20:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1739478118;
	bh=ZK/AyYlG5Uy3wFT7HiFh1OpPi4sAvrFoPu9yYv3SUwc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i2+nNcVF04QLCRbaN8qRXakAw+qY/8mz4eu+cJvvolrTXHNaE//LN8n5zqPH6kK+J
	 YL6RH+KPRbdYdMt8KAFL/wAHWo5nNs++nQU0idR+pLMcvTrjH2K42mQy3BqfoBBAPa
	 LtP3IDNsOsril2oPJW6PXpKEIp78GgWk+yqcPgBU=
Date: Thu, 13 Feb 2025 15:21:56 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org, 
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>, "Kirill A . Shutemov" <kirill@shutemov.name>, 
	"Kirill A . Shutemov" <kirill.shutemov@intel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>, 
	Nicolas Ferre <nferre@kernel.org>, Nicolas Ferre <nicolasferre@free.fr>, 
	Inga Stotland <inga.stotland@intel.com>, Inga Stotland <inga.stotland@gmail.com>, 
	Kumar Gala <galak@codeaurora.org>, Kumar Gala <galak@kernel.crashing.org>, 
	Kumar Gala <kumar.gala@linaro.org>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
	Jeff Garzik <jgarzik@pobox.com>, Pali Rohr <pali.rohar@gmail.com>, 
	Wu Fengguang <fengguang.wu@intel.com>, Wu Fengguang <wfg@linux.intel.com>, 
	Wu Fengguang <wfg@mail.ustc.edu.cn>, Wu Fengguang <fengguang.wu@gmail.com>, 
	Daniel Borkmann <daniel@iogearbox.net>, Shiraz Saleem <shiraz.saleem@intel.com>, 
	NeilBrown <neilb@suse.de>, NeilBrown <neilb@suse.com>, NeilBrown <neil@brown.name>, 
	NeilBrown <nfbrown@suse.com>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Lukasz Majewski <lukma@denx.de>, Lukasz Majewski <l.majewski@majess.pl>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Inki Dae <inki.dae@samsung.com>, Inki Dae <daeinki@gmail.com>, 
	Inki Dae <daeinki@kernel.org>, Matthew Wilcox <matthew@wil.cx>, 
	Matthew Wilcox <willy@infradead.org>, Boris Brezillon <boris.brezillon@free-electrons.com>, 
	Boris Brezillon <boris.brezillon@bootlin.com>, Boris Brezillon <bbrezillon@kernel.org>, 
	Boris Brezillon <b.brezillon.dev@gmail.com>, Boris Brezillon <boris.brezillon@collabora.com>, 
	Paul Burton <paulburton89@gmail.com>, Paul Burton <paul@archlinuxmips.org>, 
	Paul Burton <paul.burton@mips.com>, Paul Burton <paulburton@kernel.org>, 
	Paul Burton <pburton@wavecomp.com>, Chris Zankel <chris@zankel.net>, Wu Hao <hao.wu@intel.com>, 
	Stephen Warren <swarren@wwwdotorg.org>, Andrew Grover <andy@groveronline.com>, 
	Kay Sievers <kay.sievers@vrfy.org>, Kay Sievers <kay@vrfy.org>, Pekka Enberg <penberg@iki.fi>, 
	Ben Widawsky <ben@bwidawsk.net>, Ben Widawsky <bwidawsk@freebsd.org>, 
	Ben Widawsky <ben.widawsky@intel.com>, Ben Widawsky <bwidawsk@kernel.org>, 
	Brian Gix <brian.gix@gmail.com>, Brian Gix <brian.gix@intel.com>, Martin Mares <mj@ucw.cz>, 
	Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, Stephen Warren <swarren@nvidia.com>, 
	Jani Nikula <jani.nikula@intel.com>, Alan Tull <atull@kernel.org>, 
	Alan Tull <delicious.quinoa@gmail.com>, Alan Tull <atull@opensource.altera.com>, 
	Xu Yilun <yilun.xu@intel.com>, Alexander Shishkin <ash@koowaldah.org>, 
	Alexander Shishkin <virtuoso@slind.org>, Alexander Shishkin <alexander.shishkin@intel.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Keerthy <j-keerthy@ti.com>, 
	Peter P Waskiewicz Jr <peter.waskiewicz.jr@intel.com>, PJ Waskiewicz <pjw@netapp.com>, 
	PJ Waskiewicz <pj.waskiewicz@netapp.com>, Peter P Waskiewicz Jr <pjwaskiewicz@gmail.com>
Subject: Re: [PATCH pgpkeys] Drop all keys that expired in 2023 or before
Message-ID: <20250213-prophetic-debonair-terrier-48d839@lemur>
References: <20250210110412.260635-1-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250210110412.260635-1-u.kleine-koenig@baylibre.com>

On Mon, Feb 10, 2025 at 12:04:09PM +0100, Uwe Kleine-König wrote:
> The keys removed here are all expired since at least one year. Given the
> keyring is regularily synced against different keyservers, it's unlikely
> their expiry date was updated. 

Applied, thanks!

-K
