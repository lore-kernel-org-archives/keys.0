Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55187134DC
	for <keys@linux.kernel.org>; Fri, 13 Oct 2023 14:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="hPUIaqj0"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 858F3C433C8;
	Fri, 13 Oct 2023 14:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1697208996;
	bh=xSL1VmzpLBuCh8/Is/xlcQBqm8OF/4jkT3rqazrPtF0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hPUIaqj0RlalejTvJe9GdEnCVq8kBsH2CW4LW91udrl8keFjIsLS9wk3QZnR5/8/7
	 VjCfAkwLxHTDJ+5pFtCf1fi1RdRLs5ZdwPohmhmf4ylxw2a5RvzMTukCqSmipzVwyl
	 k5K7rkuJCiCQKcTXJZ98hgkuIUlyQH3hvVdqMK98=
Date: Fri, 13 Oct 2023 10:56:35 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: keys@linux.kernel.org
Subject: Re: Geert's key with extended expiration
Message-ID: <20231013-shamrock-unlocking-a8cd61@meerkat>
References: <CAMuHMdWOjaiV9RbKxTHd=MJjiR=J1G7+x6jk+eJ15TptEULATQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAMuHMdWOjaiV9RbKxTHd=MJjiR=J1G7+x6jk+eJ15TptEULATQ@mail.gmail.com>

On Fri, Oct 13, 2023 at 11:42:05AM +0200, Geert Uytterhoeven wrote:
> 
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K
