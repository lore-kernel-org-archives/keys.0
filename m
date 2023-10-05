Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9854176D
	for <keys@linux.kernel.org>; Thu,  5 Oct 2023 20:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="IRkiq3mX"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C871C433C7;
	Thu,  5 Oct 2023 20:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1696537747;
	bh=G9/dai20L2kcXeDiYRrT7A8f7J+VPVGRbzwRaQV4qoE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IRkiq3mXFppzb9Zylv6/PLu0gh0fxFg371DIsKRtM7Dm0m8I0ldj1pEI26qXBRV0t
	 hB5RTKwCpwuXF6eXscUmiTtCHZ5kuA/BUa1+sS4VfwGHtMsD1dcqiBOoiG98xMrDKM
	 NF1O+iUx32eEYrNFCku/8UAJztCPSkfPVBdXVYH8=
Date: Thu, 5 Oct 2023 16:28:46 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Jassi Brar <jassisinghbrar@gmail.com>
Cc: keys@linux.kernel.org
Subject: Re: Signed Public Key
Message-ID: <20231005-irate-defame-bb0684@meerkat>
References: <CABb+yY1FrJn0u5jJN_9Z1ifE==2iS4Xd_mHAPUjaKY8r3cvNGw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CABb+yY1FrJn0u5jJN_9Z1ifE==2iS4Xd_mHAPUjaKY8r3cvNGw@mail.gmail.com>

On Sun, Oct 01, 2023 at 05:37:21PM -0500, Jassi Brar wrote:
> Hi,
>    Please include my key in the kernel.org keyring.
> It is signed by three kernel.org account holders.

Updated, thank you.

-K
