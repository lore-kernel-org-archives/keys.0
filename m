Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81A92076C0
	for <keys@linux.kernel.org>; Wed,  6 Nov 2024 18:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730916458; cv=none; b=kQ+KnwF/877YFh/BX6aP54ECHb9GHF2MspoNS+2sJCN4CaOU/fKT+grQzACBsn722XEqe8vTUmejYJfFonWuMMJRNb8PJ65k+qHGrL2Uu4Y7iwcZt/y3HtP/byMrIf5Qa9JWfqSypFx6HBrC+g53NaOfolRtZRgz/ImXo/3uOQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730916458; c=relaxed/simple;
	bh=9mbqg4ot6nDwCb1SaIg3TCkEQkkwr0piOFGLK8MBT5Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t78Y5lgicK2H5BtN1NpzFvCmuo04D9KdODZIdxP0XDsvKnZPO9t2aUvc4azvwxf1UvW0DIgc8a11EZi+Db6KkPUzn/PAsCGhW52sk60zQ8KCy/IaOctwZxpWxUi8oVf4o1GHDrXtUj4a4xoGsNItbehMFnZ9B2gGQuF6mSh0LXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=0W9f6V64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="0W9f6V64"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B315C4CECC;
	Wed,  6 Nov 2024 18:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1730916457;
	bh=9mbqg4ot6nDwCb1SaIg3TCkEQkkwr0piOFGLK8MBT5Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=0W9f6V64PFkJp1EJf0NLW3v+HqwoDEh0WAJJVgoCnj+KYZnlaC88lhRlPTz9nvIcL
	 qGIdL27SyocU62snx51BJGq79CLfAyUmCfTKdO78H1nFOCVMMw7aL5dBHwfCpc5Hd8
	 qcrYNRzTNqCAI5937QI0SgFV38l3VFyPdvEvrUJs=
Date: Wed, 6 Nov 2024 13:07:33 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Cc: keys@linux.kernel.org
Subject: Re: Add Vincent Mailhol's key
Message-ID: <20241106-benign-camel-of-domination-7ddd50@lemur>
References: <fabfabb6-7916-472d-9755-3b958efa3c81@wanadoo.fr>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <fabfabb6-7916-472d-9755-3b958efa3c81@wanadoo.fr>

On Thu, Nov 07, 2024 at 02:50:32AM +0900, Vincent Mailhol wrote:
> Hi,
> 
> Could you please add my key to the keyring?

Added.

-K
