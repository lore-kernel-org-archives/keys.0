Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C7315E8E
	for <keys@linux.kernel.org>; Wed,  1 Nov 2023 16:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="FZBDFuht"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 279ABC433C9;
	Wed,  1 Nov 2023 16:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1698856221;
	bh=QpWiVCxyIxFuEU254Jx6/be35MXln1TY4ou46QChSNY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FZBDFuhtusN6wI/NRtUxIZ8hHuzVFRZmDIyrvuk7zgAY+DO1qQh3MHXMN/YoAWaJ7
	 r0C9R6K2OosLhQ1nx/jVNe0GZ2t4YX8GtDi+Z7CVSlV6ioWR+T/FW+fZj95ynPz42A
	 6jEsIfemsvi6/0h53UEcs4IjknoTizK3ZNB/5aZE=
Date: Wed, 1 Nov 2023 12:30:20 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: keys@linux.kernel.org
Subject: Re: abel.vesa@linaro.org
Message-ID: <20231101-purring-unyielding-moose-cd2eee@meerkat>
References: <ZUJt2EMUuyhZC2sM@linaro.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ZUJt2EMUuyhZC2sM@linaro.org>

On Wed, Nov 01, 2023 at 05:25:12PM +0200, Abel Vesa wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks. Your ssh key has also been updated to use your newest Auth
subkey.

-K
